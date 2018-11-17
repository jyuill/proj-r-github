## Testing roll-back via Git

library(tidyverse)

data <- data.frame(name=c("Alex","Ed","George"),
                   age=c(22,44,33))

write_csv(data, 'input/name-age.csv')

ggplot(data, aes(x=name, y=age))+geom_bar(stat='identity')

