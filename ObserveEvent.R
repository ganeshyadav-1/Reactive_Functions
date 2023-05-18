# Function to perform calculations
calculate <- function(num1, num2, operator) {
  switch(operator,
         "+" = num1 + num2,
         "-" = num1 - num2,
         "*" = num1 * num2,
         "/" = num1 / num2)
}

# Input values
num1 <- 10
num2 <- 5
operator <- "+"

# Perform calculation
result <- calculate(num1, num2, operator)

# Print the result
print(result)

