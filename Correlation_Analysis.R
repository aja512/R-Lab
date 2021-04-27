# Load Libraries
library("ggpubr")

# Correlation Functions
cor(x, y, method = c("pearson", "kendall", "spearman"))
cor.test(x, y, method=c("pearson", "kendall", "spearman"))

cor(x, y,  method = "pearson", use = "complete.obs")

my_data <- mtcars
head(my_data, 6)

# Visualize your data using scatter plots
library("ggpubr")
ggscatter(my_data, x = "mpg", y = "wt", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

# Shapiro-Wilk normality test for mpg
shapiro.test(my_data$mpg) # => p = 0.1229
# Shapiro-Wilk normality test for wt
shapiro.test(my_data$wt) # => p = 0.09

# mpg
ggqqplot(my_data$mpg, ylab = "MPG")
# wt
ggqqplot(my_data$wt, ylab = "WT")

res <- cor.test(my_data$wt, my_data$mpg, 
                method = "pearson")
res

# Extract the p.value
res$p.value

# Extract the correlation coefficient
res$estimate

res2 <- cor.test(my_data$wt, my_data$mpg,  method="kendall")
res2

res2 <-cor.test(my_data$wt, my_data$mpg,  method = "spearman")
res2

