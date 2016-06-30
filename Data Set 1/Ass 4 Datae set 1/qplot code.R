qplot(feed, weight, data = ckwts, geom = "boxplot")
> ?qplot
> qplot(feed, weight, data = ckwts, geom = "boxplot", ylab = "Weight (g)", xlab = "Feed")
> qplot(weight, data = ckwts, facets = feed ~., binwidth =2)
> qplot(weight, data = ckwts, facets = feed ~., binwidth =2, main = "Histogram of neonate chick weights per feed type")