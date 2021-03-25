H DftActGrp(*no) ActGrp(*new)                                 
H Option(*srcstmt:*nodebugio)                                 
H bnddir('QC2LE')                                             
 *                                                            
FPBARD     CF   E             Workstn                         
 *                                                            
D var             S            100A                           
D i               S              3I 0                         
D Color           C                   X'3B'                   
D Normal          C                   X'20'                   
 *                                                            
D USleep          PR            10I 0 ExtProc('usleep')       
D                               10I 0 value                   
 *                                                            
 /free                                                        
   Dow *IN03 = *Off;                                          
     Exfmt recfmt;                                            
     Clear Var;                                               
     For i = 1 to InpVal;                                     
       Pbar = Color + %Subst(var:1:i) + Normal;   
       Pval = %char(i) + '%';                     
       write recfmt;                              
       USleep(50000);                             
     EndFor;                                      
   EndDo;                                         
    *Inlr = *on;                                  
 /end-free                                        
