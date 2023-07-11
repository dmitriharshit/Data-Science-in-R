install.packages("rvest")

library(rvest)

url <- "https://stats.stackexchange.com/questions?tab=Votes"

webpage <- read_html(url)

title <- webpage %>% 
  html_nodes(".question-summary h3 a") %>% 
  html_text()

views <- webpage %>% 
  html_nodes(".question-summary .views") %>% 
  html_text() %>% 
  gsub(" views", "", .) %>% 
  as.integer()

answers <- webpage %>% 
  html_nodes(".question-summary .status strong") %>% 
  html_text() %>% 
  as.integer()

votes <- webpage %>% 
  html_nodes(".question-summary .votes strong") %>% 
  html_text() %>% 
  as.integer()

data <- data.frame(
  Title = title,
  Views = views,
  Answers = answers,
  Votes = votes
)

# Print the dataframe
print(data)

