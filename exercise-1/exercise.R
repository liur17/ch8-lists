# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
breakfast <- c("cereal","milk","bananas","yogurt")

# Create a vector of everything you ate for lunch
lunch <- c("sandwich","juice","string cheese")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals <- list(breakfast = breakfast, lunch = lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c("pasta","chicken","salad")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals[['dinner']]

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
#meals[[5]] <- meals$lunch
meals[['leftovers']] <- meals$lunch

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`



### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function
lapply(meals, length)

# Write a function that adds pizza to every meal
AddPizza <- function(x) {
  results <- c(x, 'pizza')
  return(results)
}

# Add pizza to every meal!
better.meals <- lapply(meals, AddPizza)
