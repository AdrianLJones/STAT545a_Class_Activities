rm(list = ls())

#set variables
n <- 40
a <- 2
b <- 3
sig_sq <- 0.5
colour <- "purple"
file_name <- "toyLinePlot2.pdf"

#make model
x <- runif(n)
y <- a+b*x+rnorm(n, sd = sqrt(sig_sq))
mean_x <- mean(x)

write(mean_x, "mean_x.txt")

#make plot
plot(x,y)
abline(a, b, col="purple")

dev.print(pdf, file_name)
