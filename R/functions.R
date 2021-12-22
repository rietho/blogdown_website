# get function to build archive
scan_yaml <- getFromNamespace("scan_yaml", "blogdown")

require(tidyverse)
require(lubridate)

# get yamls
all_yaml <- scan_yaml()
# extract blog yamls
blog_yamls <- all_yaml[
  names(all_yaml) %>% str_detect("content/blog/.*/index.md")]
# remove drafts
#blog_yamls <- blog_yamls[map(blog_yamls, ~ !.x$draft) %>% unlist()]
# order by date
blog_yamls <- blog_yamls[map(blog_yamls, ~ .x$date) %>% unlist() %>% order()]

# What I need
# * title
# * date
# * remove drafts

x <- blog_yamls %>% imap(~ list(
  title = .x$title, 
  year = year(.x$date), 
  month = month(.x$date, label = TRUE, abbr = FALSE),
  link = .y))

df <- do.call(rbind.data.frame, x) %>% remove_rownames() %>% 
  mutate(text = glue::glue("[{title}]({link})")) %>% 
  select(year, month, text) %>% 
  arrange(desc(year), desc(month), text)
df

