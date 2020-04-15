library(tidyverse)


#reading in bible
all_bibles <- read_csv("bibles.csv")

# filtering for gospels
gospels <- all_bibles %>%
  filter(str_detect(Verse, "Matthew|Mark|John|Luke"))
gospels <- gospels %>%
  mutate(Book = str_split(Verse, " ")[[1]][1])


# selecting the relevant versions
kjv_gospels <- gospels %>%
  select(Book, `King James Bible`)
asv_gospels <- gospels %>%
  select(Book, `American Standard Version`)
erv_gospels <- gospels %>%
  select(Book, `English Revised Version`)
web_gospels <- gospels %>%
  select(Book, `World English Bible`)
