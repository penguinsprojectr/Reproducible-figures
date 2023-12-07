clean_up_penguins <-function (penguins_data) {
  penguins_data %>% 
    select(-starts_with("Delta")) %>% 
    select(-Comments) %>% 
    clean_names()
}
#This filters the data by removing the 'Delta 15 N' and 'Delta 13C o/oo' columns, and by using the clean_names function from the janitor package. It also condenses the steps using piping to make them more grouped together and human-readable. I saved this into a function, so I can call it if I ever need to clean up penguin data in the future.