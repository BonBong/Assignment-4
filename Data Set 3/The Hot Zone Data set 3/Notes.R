#crosstabulate 
> table(gastro$Consumption~gastro$Outcome)
Error in unique.default(x, nmax = nmax) : 
  unique() applies only to vectors
> table(gastro$Consumption, gastro$Outcome)

ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
> #Make a vector of the table
  > xtable <- table(gastro$Consumption, gastro$Outcome)
> xtable

ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
> #make a data frame, using dplyr, for easier printing.
  > gastro.df <- tbl_df(xtable)
Error: could not find function "tbl_df"
> gastro.df <- tbl_df("xtable")
Error: could not find function "tbl_df"
> gastro.df <- tbl_df(gastro)
Error: could not find function "tbl_df"
> rm(gastro)
> rm(xtable)
> mydf <- read.csv("gastroenteritis.csv", stringsAsFactors = FALSE)
> dim(mydf)
[1] 1094    2
> gastro.df <- tbl_df(mydf)
Error: could not find function "tbl_df"
> gastro.df <- tbl_df("mydf")
Error: could not find function "tbl_df"
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:
  
  filter, lag

The following objects are masked from ‘package:base’:
  
  intersect, setdiff, setequal, union

Warning message:
  package ‘dplyr’ was built under R version 3.3.1 
> library(tidyr)
Warning message:
  package ‘tidyr’ was built under R version 3.3.1 
> library(ggplot2)
Warning message:
  package ‘ggplot2’ was built under R version 3.3.1 
> gastro.df <- tbl_df(mydf)
> rm(mydf)
> View(gastro.df)
> #Make a contingency table
  > table(gastro.df$Consumption, gastro.df$Outcome)

ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
> #make a factor of the table
  > xtable <- table(gastro.df$Consumption, gastro.df$Outcome)
> #print new factor
  > xtable

ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
> #Use the 'xtabs' function with the COUNT on the left of the formula
  > #ignore the above
  > #cross tabulate with xtabs
  > xtabs(~Consumption + Outcome,
          +       data = gastro.df)
Outcome
Consumption          ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
> xtable2 <- xtabs(~Consumption + Outcome,
                   +                  data = gastro.df)
> xtable2
Outcome
Consumption          ill not ill
< 1 glasses/day     39     121
< 4 glasses/day    265     146
1 to 4 glasses/day 265     258
ChiSqTest <- chisq.test(xtable2, correct = FALSE)
> ChiSqTest

Pearson's Chi-squared test

data:  xtable2
X-squared = 74.925, df = 2, p-value < 2.2e-16

> Fisch <- fisher.test(xtable2)
> Fisch

Fisher's Exact Test for Count Data

data:  xtable2
p-value < 2.2e-16
alternative hypothesis: two.sided