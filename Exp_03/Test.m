syms s K; 
G = 2.5/(s*(s+5)); 
H = 1/(0.1*s+1); 
M = K*G/(1+G*H) 

M = 5/2*K/s/(s+5)/(1+5/2/s/(s+5)/(1/10*s+1)); 
simplify(M)
