labs$BMI = labs$WT/(labs$HT *labs$HT)
bmi<-data.frame(labs$BMI,labs$TC)
bmi$labs.TC <- as.numeric(bmi$labs.TC)
colnames(corr)[1] <- "BMI"
colnames(corr)[1] <- "Total Cholesterol"
cor(bmi, use="complete.obs", method="kendall") 
cor(bmi, use="complete.obs", method="pearson") 
cor(bmi, use="complete.obs", method="spearman") 
