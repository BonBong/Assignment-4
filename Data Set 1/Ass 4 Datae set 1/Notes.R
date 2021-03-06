library(tidyr)
Warning message:
  package ‘tidyr’ was built under R version 3.3.1 
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

Warning message:
  package ‘dplyr’ was built under R version 3.3.1 
> library(ggplot2)
Warning message:
  package ‘ggplot2’ was built under R version 3.3.1 
> ls()
character(0)
> list.files()
[1] "Ass 4 Datae set 1.Rproj" "Chickweight Boxplot.pdf"
[3] "ckwts.csv"              
> ckwts <- read.csv("ckwts.csv")
> View(ckwts)
> View(ckwts)
> View(ckwts)
> ckwts
weight      feed
1     179 horsebean
2     160 horsebean
3     136 horsebean
4     227 horsebean
5     217 horsebean
6     168 horsebean
7     108 horsebean
8     124 horsebean
9     143 horsebean
10    140 horsebean
11    309   linseed
12    229   linseed
13    181   linseed
14    141   linseed
15    260   linseed
16    203   linseed
17    148   linseed
18    169   linseed
19    213   linseed
20    257   linseed
21    244   linseed
22    271   linseed
23    243   soybean
24    230   soybean
25    248   soybean
26    327   soybean
27    329   soybean
28    250   soybean
29    193   soybean
30    271   soybean
31    316   soybean
32    267   soybean
33    199   soybean
34    171   soybean
35    158   soybean
36    248   soybean
37    423 sunflower
38    340 sunflower
39    392 sunflower
40    339 sunflower
41    341 sunflower
42    226 sunflower
43    320 sunflower
44    295 sunflower
45    334 sunflower
46    322 sunflower
47    297 sunflower
48    318 sunflower
49    325  meatmeal
50    257  meatmeal
51    303  meatmeal
52    315  meatmeal
53    380  meatmeal
54    153  meatmeal
55    263  meatmeal
56    242  meatmeal
57    206  meatmeal
58    344  meatmeal
59    258  meatmeal
60    368    casein
61    390    casein
62    379    casein
63    260    casein
64    404    casein
65    318    casein
66    352    casein
67    359    casein
68    216    casein
69    222    casein
70    283    casein
71    332    casein
> View(ckwts)
> boxplot(ckwts$weight, ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(x = ckwts$weight, 
          +         y = ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(ckwts$weight~ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(x = ckwts$weight, 
          +         y = ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(ckwts$weight~ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of different feed supplement",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(x = ckwts$weight, 
          +         y = ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(ckwts$weight~ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting of different feed supplements",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(x = ckwts$weight, 
          +         y = ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting solely of casein, horsebean, linseed, meatmeal, soybean, and sunflower",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> boxplot(ckwts$weight~ckwts$feed,
          +         col = "red",
          +         main = "Boxplot illustrating the weights of chicks fed diets consisting of different feed supplements",
          +         xlab = "Feed",
          +         ylab = "Weight (g)")
> ?aov
> ANO.VA <- aov(weight~feed,
                +               data = ckwts)
> summary(ANO.VA)
Df Sum Sq Mean Sq F value   Pr(>F)    
feed         5 231129   46226   15.37 5.94e-10 ***
  Residuals   65 195556    3009                     
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> aov(weight$feed,
      +               data = ckwts)
Error in terms(formula, "Error", data = data) : object 'weight' not found
> aov(weight~feed,
      +               data = ckwts)
Call:
  aov(formula = weight ~ feed, data = ckwts)

Terms:
  feed Residuals
Sum of Squares  231129.2  195556.0
Deg. of Freedom        5        65

Residual standard error: 54.85029
Estimated effects may be unbalanced
> head(ckwts)
weight      feed
1    179 horsebean
2    160 horsebean
3    136 horsebean
4    227 horsebean
5    217 horsebean
6    168 horsebean
> foo <- aov(weight~feed,
             +            data = ckwts)
> summary(foo)
Df Sum Sq Mean Sq F value   Pr(>F)    
feed         5 231129   46226   15.37 5.94e-10 ***
  Residuals   65 195556    3009                     
---
  Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> #Need to correct p valuefor multiple comparisons so as to avoid Type 1 error:
  > pairwise.t.test(ckwts$weight, ckwts$feed, 
                    +                 p.adjust.method = 'bonferroni',
                    +                 paired = FALSE)

Pairwise comparisons using t tests with pooled SD 

data:  ckwts$weight and ckwts$feed 

casein  horsebean linseed meatmeal soybean
horsebean 3.1e-08 -         -       -        -      
  linseed   0.00022 0.22833   -       -        -      
  meatmeal  0.68350 0.00011   0.20218 -        -      
  soybean   0.00998 0.00487   1.00000 1.00000  -      
  sunflower 1.00000 1.2e-08   9.3e-05 0.39653  0.00447

P value adjustment method: bonferroni 
> bonferroni <- pairwise.t.test(ckwts$weight, ckwts$feed,
                                +                               p.adjust.method = 'bonferroni',
                                +                               paired = FALSE)
> bonferroni

Pairwise comparisons using t tests with pooled SD 

data:  ckwts$weight and ckwts$feed 

casein  horsebean linseed meatmeal soybean
horsebean 3.1e-08 -         -       -        -      
  linseed   0.00022 0.22833   -       -        -      
  meatmeal  0.68350 0.00011   0.20218 -        -      
  soybean   0.00998 0.00487   1.00000 1.00000  -      
  sunflower 1.00000 1.2e-08   9.3e-05 0.39653  0.00447

P value adjustment method: bonferroni 
> holm <- pairwise.t.test(ckwts$weight, ckwts$feed,
                          +                         p.adjust.method = 'holm',
                          +                         paired = FALSE)
> holm

Pairwise comparisons using t tests with pooled SD 

data:  ckwts$weight and ckwts$feed 

casein  horsebean linseed meatmeal soybean
horsebean 2.9e-08 -         -       -        -      
  linseed   0.00016 0.09435   -       -        -      
  meatmeal  0.18227 9.0e-05   0.09435 -        -      
  soybean   0.00532 0.00298   0.51766 0.51766  -      
  sunflower 0.81249 1.2e-08   8.1e-05 0.13218  0.00298

P value adjustment method: holm