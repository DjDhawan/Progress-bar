H DftActGrp(*no) ActGrp(*new)                                 
H Option(*srcstmt:*nodebugio)                                 
H bnddir('QC2LE')                                             
 *                                                            
FPBARD     CF   E             Workstn                         
 *                                                            
D var             S            100A                           
D i               S              3I 0                         
 *                                                                            
D USleep          PR            10I 0 ExtProc('usleep')    
D                               10I 0 value                
 *                                                         
 /free                                                     
   Dow *IN03 = *Off;                                       
     Exfmt recfmt;                                         
     Clear Var;                                            
     For i = 1 to InpVal;                                  
       Var = %trim(var) + '>';                             
       Pval = %char(i) + '%';                              
       Pbar = Var;                                         
       write recfmt;                                       
       USleep(50000);                                      
     EndFor;                                               
   EndDo;                                                  
    *Inlr = *on;                                           
 /end-free                                                 
