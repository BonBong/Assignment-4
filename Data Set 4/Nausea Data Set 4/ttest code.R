t.test(nausea$Nausea_before, nausea$Nausea_after, paired = TRUE)

Paired t-test

data:  nausea$Nausea_before and nausea$Nausea_after
t = 3.3072, df = 7, p-value = 0.01299
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  0.7125121 4.2874879
sample estimates:
  mean of the differences 
2.5 

> foo <- t.test(nausea$Nausea_before, nausea$Nausea_after, paired = TRUE)
> foo 

Paired t-test

data:  nausea$Nausea_before and nausea$Nausea_after
t = 3.3072, df = 7, p-value = 0.01299
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  0.7125121 4.2874879
sample estimates:
  mean of the differences 
2.5 