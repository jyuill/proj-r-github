## File for delete to test recover

name.age <- read_csv('input/name-age.csv')

name.age$name <- as.factor(name.age$name)
name.age <- name.age %>% mutate(
  adiff=lag(age)-age
)

ggplot(name.age, aes(x=name, y=adiff))+geom_bar(stat='identity')+
<<<<<<< HEAD
  theme_classic()
=======
  theme_bw()+scale_y_continuous(labels=comma)

>>>>>>> 04b5b6160a62e983d5e340d9a6a8394febd737d3
