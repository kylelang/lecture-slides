data(iris)

out <- lm(Petal.Width ~ Petal.Length + Sepal.Length, data = iris)

f <- summary(out)$fstatistic

?pf


out2 <- update(out, ". ~ . + Sepal.Width")

tmp <- anova(out, out2)

ls(tmp)

tmp$F
tmp$"Pr(>F)"

dim(tmp)

tmp[2, ]
