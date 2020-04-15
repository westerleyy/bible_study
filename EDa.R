library(tidyverse)


#reading in bible
all_bibles <- read_csv("bibles.csv")

# filtering for gospels
gospels <- all_bibles %>%
  filter(str_detect(Verse, "Matthew|Mark|John|Luke"))
gospels <- gospels %>%
  mutate(Book = str_split(Verse, " ")[[1]][1])

# just the KJV
all_bibles <- all_bibles %>%
  mutate(Verse = str_replace_all(Verse, c("1 " = "First", "2 " = "Second", "3 " = "Third")))
books <- sapply(1:dim(all_bibles)[1], function(x){
  book = str_split(all_bibles[x,1], " ")[[1]][1]
  book
})
all_bibles$Book <- books

# collapsing into each book
kjv_collapsed <- all_bibles %>%
  select(Book, `King James Bible`) %>%
  group_by(Book) %>%
  summarise(Verse = paste(`King James Bible`, collapse = " "))

# selecting the relevant versions
kjv_gospels <- gospels %>%
  select(Book, `King James Bible`)
asv_gospels <- gospels %>%
  select(Book, `American Standard Version`)
erv_gospels <- gospels %>%
  select(Book, `English Revised Version`)
web_gospels <- gospels %>%
  select(Book, `World English Bible`)
