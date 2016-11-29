library(dplyr)
library(ggplot2)

sim <- data.frame(x = runif(100, 0, 3)) %>%
	dplyr::mutate(
		constant_variance = rnorm(length(x), x, x),
		linear = rnorm(length(x), x^2),
		independent = x+arima.sim(list(ar=.99), length(x)),
		normal = x+rt(length(x), 5))

sim2 <- sim %>%
	rename(y1 = normal,
				 y2 = independent, 
				 y3 = constant_variance, 
				 y4 = linear)

sim2 %>%
	readr::write_csv(path="problem5.csv")

analysis <- sim2 %>%
	tidyr::gather(violation, y, -x) %>%
	group_by(violation) %>%
	do(broom::augment(lm(y~x,.))) %>%
	ungroup()

# 
g1 <- ggplot(analysis %>% filter(violation %in% c("y3","y4")), aes(.fitted, .resid)) + 
	geom_point() +
	facet_wrap(~violation, scales="free", ncol = 3, dir = "v") +
	labs(x="Fitted values", y="Residuals") +
	theme_bw()

g2 <- ggplot()