## Testing roll-back via Git

library(tidyverse)

data <- data.frame(name=c("George","Ed"),
                   age=c(44,33))

ggplot(data, aes(x=name, y=age))+geom_bar(stat='identity')
