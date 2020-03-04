// input = array - expenses & available money

// output = boolean true if negative or overdraft 
// false is if not in negative 

// 1250 = final budget 
// condition to check on 1250 to determine whether we return true or false

// output = true//
// check if final budget is positive 
// if it is then return true

// Add the numbers in array to get the final budget

let amountsTransactions = [100, -300, -50, 600]
let totalSum = amountsTransactions.reduce(0, +) 

print("totalSum \(totalSum)")
if totalSum >= 0 {
  return true
} else {
  return false
}
