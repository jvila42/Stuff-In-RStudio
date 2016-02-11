g <- read.csv(file.choose())
View(g)

sum(g$Bread)
sum(g$Milk)
sum(g$Fruit)

sum(g$Bread * g$Milk)


conf.bread.milk <- sum(g$Bread * g$Milk) / sum(g$Bread)
print(conf.bread.milk)


conf.fruit.milk <- sum(g$Fruit * g$Milk) / sum(g$Fruit)
print(conf.fruit.milk)



lift.bread.milk <-
  conf.bread.milk / (sum(g$Milk)/nrow(g))
print(lift.bread.milk)



G <- read.csv(file.choose())
View(G)

sum(G$butter)
sum(G$whole.milk)
sum(G$butter * G$whole.milk)
