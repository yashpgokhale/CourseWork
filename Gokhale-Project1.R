# Yash Prashant Gokhale September 24, 2023 ALY 6000 -- Introduction to Analytics

cat("\014") # clears console
rm(list = ls()) # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) #clears packages
options(scipen = 100) # disables scientific notation for entire R session

123*453 
5^2 * 40
TRUE & FALSE
TRUE | FALSE
75 %% 10
75/10

first_vector <- c(17, 12, -33, 5)
first_vector

counting_by_fives <- c(5, 10, 15, 20, 25, 30, 35)
counting_by_fives

second_vector <- seq(10, 30, by=2)
second_vector

counting_by_fives_with_seq <- seq(5, 35, by=5)
counting_by_fives_with_seq

third_vector <- rep(first_vector, 10)
third_vector

rep_vector <- rep(0, 20)
rep_vector

fourth_vector <- c(10:1)
fourth_vector

counting_vector <- c(5:15)
counting_vector

grades <- c(96, 100, 85, 92, 81, 72)
grades

bonus_points_added <- 3+grades
bonus_points_added

one_to_one_hundred <- c(1:100)
one_to_one_hundred

reverse_numbers <- seq(from = 100, to = -100, by = -3)
reverse_numbers

# 20 has been added to all the elements of the vector
second_vector+20

# All the elements in the vector get multiplied by 20
second_vector*20

# Returns the elements in the given vector that are greater than 20 as TRUE and remaining once as FALSE.
second_vector >= 20

# Returns the elements in the given vector that are not equal to 20 as TRUE and the remaining as FALSE.
second_vector != 20

total <- sum(one_to_one_hundred)
total

average_value <- mean(one_to_one_hundred)
average_value

median_value <- median(one_to_one_hundred)
median_value

max_value <- max(one_to_one_hundred)
max_value

min_value <- min(one_to_one_hundred)
min_value

first_value <- second_vector[1]
first_value

first_three_values <- second_vector[1:3]
first_three_values

vector_from_brackets <- second_vector[c(1,5,10,11)]
vector_from_brackets

# The second and the Third (Fourth) element from the first_vector were returned. 
vector_from_boolean_brackets <- first_vector[c(FALSE,TRUE,FALSE, TRUE)]
vector_from_boolean_brackets

# Returns the elements from the second_vector which are above 20 as TRUE while others as FALSE.
second_vector >= 20

# The vector is computed using the 'seq' function with the first element starting from 
# 10 and the last till 30 with the increment of 2.
ages_vector <- seq(from=10, to=30, by = 2)
ages_vector

# Returns the values which are greater then 20 from the 'ages_vector'
ages_vector [ages_vector>=20]

lowest_grades_removed <- grades[c(grades>=85)]
lowest_grades_removed

middle_grades_removed <- grades[c(-3,-4)]
middle_grades_removed

fifth_vector <- second_vector[-c(5,10)]
fifth_vector

# set.seed() is used to create the exact same Random Variables every time.
# runif() is used to create the vector of given length, which each value being random. 
set.seed(5)
random_vector <- runif(n=10, min = 0, max = 1000)
random_vector

sum_vector <- sum(random_vector)
sum_vector

cumsum_vector <- cumsum(random_vector)
cumsum_vector

mean_vector <- mean(random_vector)
mean_vector

sd_vector <- sd(random_vector)
sd_vector

round_vector <- round(random_vector)
round_vector

sort_vector <- sort(random_vector)
sort_vector

# set.seed() is used to create the exact same Random Variables every time.
# rnorm is used to create a normal distribution with 1000 values with mean as 50 and sd as 15.
set.seed(5)
random_vector <- rnorm(n=1000, mean = 50, sd = 15)
random_vector

hist(random_vector)

first_dataframe <- read_csv("ds_salaries.csv")

head(first_dataframe)
head(first_dataframe, n=7)
names(first_dataframe)

smaller_dataframe <- select(first_dataframe,job_title,salary_in_usd)
smaller_dataframe

better_smaller_dataframe <- arrange(smaller_dataframe,desc(salary_in_usd))
better_smaller_dataframe
better_smaller_dataframe <- filter(smaller_dataframe,salary_in_usd>80000)
better_smaller_dataframe

better_smaller_dataframe <- mutate(smaller_dataframe,salary_in_euros=salary_in_usd*.94)
better_smaller_dataframe

better_smaller_dataframe <- slice(smaller_dataframe,1,1,2,3,4,10,1)
better_smaller_dataframe

ggplot(better_smaller_dataframe)+
  geom_col(mapping = aes(x=job_title, y=salary_in_usd), fill="blue")+
  xlab("Job Title")+
  ylab("Salary in US Dollars")+
  labs(title = "Comparision of Jobs ")+
  scale_y_continuous(labels = scales::dollar)+
  theme(axis.text.x = element_text(angle = 50, hjust = 1))