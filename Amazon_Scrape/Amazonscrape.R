
library(polite)
library(dplyr)
library(rvest)
library(httr)

polite::use_manners(save_as = 'polite_scrape.R')

brand_description <- character(0)
url_link <- 'https://www.amazon.com/s?i=specialty-aps&bbn=16225019011&rh=n%3A7141123011%2Cn%3A16225019011%2Cn%3A1040658&ref=nav_em__nav_desktop_sa_intl_clothing_0_2_13_2'
price <- character(0)
num_of_reviews <- character(0)

scraped_page <- scrape(bow(url_link, user_agent = "Educational"))

brand_description <- scraped_page %>%
  html_nodes('.a-size-medium.a-color-base.a-text-normal') %>%
  html_text()

brand_des <- data.frame(Brand_Description = brand_description)
brand_des <- slice(brand_des, 1:3)
print(brand_des)

price <- scraped_page %>%
  html_nodes('span.a-offscreen') %>%
  html_text()

num_of_reviews <- scraped_page %>%
  html_nodes('span.a-size-base') %>%
  html_text()

rev_stars <- scraped_page %>%
  html_nodes('span.a-icon-alt') %>%
  html_text()

min_length <- min(length(brand_description), length(price), length(num_of_reviews), length(rev_stars))

clothing_data <- data.frame(
  Brand_Description = brand_description[1:min_length],
  Price = price[1:min_length],
  Number_of_Reviews = num_of_reviews[1:min_length],
  Review_Stars = rev_stars[1:min_length]
)

print(clothing_data)
