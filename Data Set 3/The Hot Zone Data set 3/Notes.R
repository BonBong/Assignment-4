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
  > 