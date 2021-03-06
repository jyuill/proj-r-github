## File for delete to test recover

library(tidyverse)
library(scales)

name.age <- read_csv('input/name-age.csv')

name.age$name <- as.factor(name.age$name)
name.age <- name.age %>% mutate(
  adiff=lag(age)-age
)

ggplot(name.age, aes(x=name, y=adiff))+geom_bar(stat='identity')+
  theme_classic()+scale_y_continuous(labels=comma)

ggplot(name.age, aes(x=adiff))+geom_histogram()

age.max <- max(name.age$age)
age.min <- min(name.age$age)
age.mean <- mean(name.age$age)
age.range <- age.max-age.min

### local and remote changes both kept
## local change - std dev
age.stdev <- sd(name.age$age)

## remote change - adding median calc
age.median <- median(name.age$age)

mm <- age.mean-age.median
mm2 <- age.median - age.mean
