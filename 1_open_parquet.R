library(arrow)
fake_news <- read_parquet("C:/Users/SS/Downloads/fakenews_vk_subset.parquet", as_data_frame = TRUE)
#, col_select = starts_with('vkgroups')  c

col_remove <- c('vkdata', 'vkdatafriends')
fake_news <- fake_news[, !colnames(fake_news) %in% col_remove]

