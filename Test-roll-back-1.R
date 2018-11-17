## Testing roll-back via Git

library(tidyverse)

data <- data.frame(name=c("Alex","Ed","George","Helen","Sue","Tene"),
                   age=c(22,44,33,38,29,12))

write_csv(data, 'input/name-age.csv')

ggplot(data, aes(x=name, y=age))+geom_bar(stat='identity')

ggplot(data, aes(x=age))+geom_histogram(binwidth=10)

