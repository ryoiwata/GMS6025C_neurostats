# Load the tidyverse set of libraries (mostly for dplyr and ggplot2) 
library(tidyverse) 

# Let's take a look at what info we have about the data in its help file 
help("iris") 

# or ?iris # what about help in ? itself? or other basic operators? 

?"?" 

?"=" 

# Make a copy of the built-in iris data 
ourdata <- iris 

# What does the structure of our dataframe look like? 
str(ourdata)

# And the first few lines (the 'head'): 
head(ourdata)

# In the console in RStudio, you could also use view(ourdata) 
# view(ourdata) 

# Note: Don't leave this in your Rmd file. 

# And the complete dataframe dumped to the console (unless output is truncated) 
# ourdata

ggplot(ourdata, aes(x=Species, y=Sepal.Length)) + geom_point()

ggplot(ourdata, aes(x=Species, y=Sepal.Length)) + geom_jitter()

ggplot(ourdata, aes(x=Sepal.Length, fill=Species)) + facet_wrap(~Species)+ geom_histogram()

ggplot(ourdata, aes(x=Sepal.Length, colour = Species)) + geom_histogram(fill = NA)

ggplot(ourdata, aes(x=Sepal.Length, y= Petal.Length)) + geom_point()

ggplot(ourdata, aes(x=Sepal.Length, y= Petal.Length)) + geom_point() + geom_smooth(method = "lm")

ggplot(ourdata, aes(x=Sepal.Length, y= Petal.Length, group=Species)) + geom_point() + geom_smooth(method = "lm")

ggplot(ourdata, aes(x=Sepal.Length, y=Petal.Length, colour=Species)) + geom_point() + geom_smooth(method = "lm")
