## File for delete to test recover

name.age <- read_csv('input/name-age.csv')

name.age$name <- as.factor(name.age$name)
name.age <- name.age %>% mutate(
  adiff=lag(age)-age
)

ggplot(name.age, aes(x=name, y=adiff))+geom_bar(stat='identity')
