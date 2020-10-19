outcomes=sample(c(1,2,3,4),1000,rep=T)
X=array(NA,10000)
Y=array(NA,10000)
X[1]=0; Y[1]=0
for(i in 2:1000){
if(outcomes[i] == 1){
X[i]=(0.8*X[i-1])+0.1 
Y[i]=(0.8*Y[i-1])+0.04
}else if(outcomes[i] == 2){
X[i]=(0.5*X[i-1])+0.25 
Y[i]=(0.5*Y[i-1])+0.4
}else if(outcomes[i] == 3){
X[i]=(0.355*X[i-1])-(0.355*Y[i-1])+0.266 
Y[i]=(0.355*X[i-1])+(0.355*Y[i-1])+0.078
}else{
X[i]=(0.355*X[i-1])+(0.355*Y[i-1])+0.378 
Y[i]=(-0.355*X[i-1])+(0.355*Y[i-1])+0.434
}
}
plot(X,Y)