
> library(tidyr)
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
> nausea <- read.csv("nausea.csv")
> nausea
Patient Nausea_before Nausea_after
1       1             3            2
2       2             4            0
3       3             6            1
4       4             2            3
5       5             2            1
6       6             4            1
7       7             5            0
8       8             6           40
> plot(x = patient<)
Error: unexpected ')' in "plot(x = patient<)"
> plot(x = nausea_before~nausea_after,
       +      y = 
         + rm(nausea)
       + rm(nausea)
       Error: unexpected symbol in:
         "rm(nausea)
       rm"
       > rm("nausea")
       > mydf <- read.csv("nausea.csv", stringsAsFactors = FALSE)
       > dim(mydf)
       [1] 8 3
       > nausea <- tbl_df(mydf)
       > rm("mydf")
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (int)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6           40
       > nausea.regr <- select(nausea, Nausea_before, Nausea_after, -Patient)
       > View(nausea.regr)
       > nausea.regr
       Source: local data frame [8 x 2]
       
       Nausea_before Nausea_after
       (int)        (int)
       1             3            2
       2             4            0
       3             6            1
       4             2            3
       5             2            1
       6             4            1
       7             5            0
       8             6           40
       > # On the assumption that the the value '40' in the second column is an error, I will change it to '4 instead.
         > #The command is: data.frame[row_number,column_number]=new_value
         > nausea.regr[8,2]=4
       > nausea.regr
       Source: local data frame [8 x 2]
       
       Nausea_before Nausea_after
       (int)        (dbl)
       1             3            2
       2             4            0
       3             6            1
       4             2            3
       5             2            1
       6             4            1
       7             5            0
       8             6            4
       > ?qplot
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (int)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6           40
       > # On the assumption that the the value '40' in the second column is an error, I will change it to '4 instead.
         > > #The command is: data.frame[row_number,column_number]=new_value
         Error: unexpected '>' in ">"
       > nausea[8,3]=4
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (dbl)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6            4
       > qplot(x = Patient,
               +       y = Nausea_before~Nausea_after,
               +       data = nausea)
       Don't know how to automatically pick scale for object of type formula. Defaulting to continuous.
       Error: Aesthetics must be either length 1 or the same as the data (8): x, y
       > qplot(x = Patient,
       +       y = Nausea_before,
       +       data = nausea)
       > plot(nausea$Nausea_after~Nausea_before~nausea$Patient)
       Error in (function (formula, data = NULL, subset = NULL, na.action = na.fail,  : 
       object is not a matrix
       > table(nausea$Nausea_before~nausea$Nausea_after)
       Error in unique.default(x, nmax = nmax) : 
       unique() applies only to vectors
       > table(nausea$Nausea_before, nausea$Nausea_after)
       
       0 1 2 3 4
       2 0 1 0 1 0
       3 0 0 1 0 0
       4 1 1 0 0 0
       5 1 0 0 0 0
       6 0 1 0 0 1
       > foo <- table(nausea$Nausea_before, nausea$Nausea_after)
       > barplot(foo)
       > barplot(nausea)
       Error in barplot.default(nausea) : 'height' must be a vector or a matrix
       > plot(x = nausea.regr$Nausea_after,
       +      y = nausea.regr$Nausea_before)
       > ?barplot
       > barplot(nausea)
       Error in barplot.default(nausea) : 'height' must be a vector or a matrix
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (dbl)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6            4
       > qplot(data = nausea,
       +       color = Nausea_after,
       +       linetype = Nausea_after,
       +       geom)
       Error in eval(expr, envir, enclos) : object 'geom' not found
       > qplot(data = nausea,
       +       color = Nausea_after,
       +       linetype = Nausea_after)
       Error: A continuous variable can not be mapped to linetype
       > qplot(data = nausea,
       +       color = Nausea_after)
       `stat_bin()` using `bins = 30`. Pick better value with
       `binwidth`.
       Warning message:
       Computation failed in `stat_bin()`:
       attempt to apply non-function 
       > qplot(data = nausea,
       +       color = Nausea_before)
       `stat_bin()` using `bins = 30`. Pick better value with
       `binwidth`.
       Warning message:
       Computation failed in `stat_bin()`:
       attempt to apply non-function 
       > ggplot(nausea, col = Nausea_after + geom())
       > ggplot(nausea, col = Nausea_after + geom(Nausea_after))
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (dbl)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6            4
       > #Hypothesis: the serotonin subtype promotes amelioration of nausea
       > #Table has 3 columns
       > #table has 8 observations
       > dim("nausea")
       NULL
       > dim(nausea)
       [1] 8 3
       > #Show the object
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (dbl)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6            4
       > #Buiuld new data frames for 'before' and 'after' interventions.
       > before <- select(nausea, Nausea_before)
       > before
       Source: local data frame [8 x 1]
       
       Nausea_before
       (int)
       1             3
       2             4
       3             6
       4             2
       5             2
       6             4
       7             5
       8             6
       > after <- select(nausea, Nausea_after)
       > after
       Source: local data frame [8 x 1]
       
       Nausea_after
       (dbl)
       1            2
       2            0
       3            1
       4            3
       5            1
       6            1
       7            0
       8            4
       > #MAke the time and nause rating factors
       > before2 <- nausea$Nausea_before
       > after <- nausea$Nausea_after
       > rm(before, after)
       > rm(before2)
       > before <- nausea$Nausea_before
       > after <- nausea$Nausea_after
       > before
       [1] 3 4 6 2 2 4 5 6
       > after
       [1] 2 0 1 3 1 1 0 4
       > # In the parameter "factor(1:8)", the second number must be equal to the numberr of individuals tested. 
       > before.new <- nausea(Weight = before, Time = "Before", Individual = factor(1:8))
       Error: could not find function "nausea"
       > before.new <- nausea, Weight = before, Time = "Before", Individual = factor(1:8)
       Error: unexpected ',' in "before.new <- nausea,"
       > ggplot(data=nausea, aes(group, measure)) + geom_bar()
       Error in eval(expr, envir, enclos) : object 'group' not found
       > ggplot(data=nausea, aes("group", "measure")) + geom_bar()
       Error: stat_count() must not be used with a y aesthetic.
       > nausea
       Source: local data frame [8 x 3]
       
       Patient Nausea_before Nausea_after
       (int)         (int)        (dbl)
       1       1             3            2
       2       2             4            0
       3       3             6            1
       4       4             2            3
       5       5             2            1
       6       6             4            1
       7       7             5            0
       8       8             6            4
       > with(nausea, plot(Nausea_before, Nausea_after))
       > with (nausea, barplot(6, col = Nausea_after))
       > with (nausea, barplot(6))
       > table(nausea$Nausea_before)
       
       2 3 4 5 6 
       2 1 2 1 2 
       > foo 2<-table(nausea$Nausea_before)
       Error: unexpected numeric constant in "foo 2"
       > foo <-table(nausea$Nausea_before)
       > barplot(foo)
       > qplot(x = patient,
       +       y = Nausea_before,
       +       data = nausea,
       +       ylim = 6)
       Error: length(lims) == 2 is not TRUE
       > qplot(x = patient,
       +       y = Nausea_before,
       +       data = nausea)
       Error in eval(expr, envir, enclos) : object 'patient' not found
       > qplot(x = Patient,
       +       y = Nausea_before,
       +       data = nausea)
       > qplot(x = Patient,
       +       data = nausea,
       +       col = Nausea_before)
       `stat_bin()` using `bins = 30`. Pick better value with
       `binwidth`.
       > qplot(x = Patient,
       +       data = nausea,
       +       colours = Nausea_before)
       Error in eval(expr, envir, enclos) : object 'Nausea_before' not found
       > 