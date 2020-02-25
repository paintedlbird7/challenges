12// Binary Search
let numbers = [1, 4, 6, 7, 10, 12, 18, 19, 23, 24, 43, 44, 58, 65]

func binarySearch(array: [Int], key: Int) -> Bool {

  if array.count == 0 { return false }

  let minIndex = 0
  let maxIndex = array.count - 1
  let midIndex = maxIndex/2
  let midValue = array[midIndex]

  if key < array[minIndex] || key > array[maxIndex] {
    print("\(key) is not in the array")
    return false
  }

  if key > midValue {
    let slice = Array(array[midIndex + 1...maxIndex])
    return binarySearch(array: slice, key: key)
  }

  if key == midValue {
    print("\(key) found in the array")
    return true
  }
  return false
}

binarySearch(array: numbers, key: 23)









// Merge Sort

// //Split Arrays
func mergeSort(array: [Int]) -> [Int] {
  
  guard array.count > 1 else {
    return array
  }

  let leftArray = Array(array[0..<array.count/2])
  let rightArray = Array(array[array.count/2..<array.count])
  
  return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}

// //Merge Arrays
func merge(left: [Int], right: [Int]) -> [Int] {

  var mergedArray: [Int] = []
  var left = left
  var right = right

  while left.count > 0 && right.count > 0 {

    if left.first! < right.first! {
      mergedArray.append(left.removeFirst())
    } else {
      mergedArray.append(right.removeFirst())
    }
    }
  return mergedArray + left + right
}


var numbers: [Int] = []

for _ in 0..<50 {
  let randomInt = Int(arc4random_uniform(UInt32(1000)))
  numbers.append(randomInt)
}

print(numbers)
print()
print(mergeSort(array: numbers))








// Palindrome 

func isPalindrome(word: String) -> Bool {
  
  var oddCharacters: Set<Character> = [ ]

  for char in word {
    if oddCharacters.contains(char) {
      oddCharacters.remove(char)
    } else {
      oddCharacters.insert(char)
      }
    }
  return oddCharacters.count <= 1
  }

isPalindrome(word: "hannah")







// Two Sum 

// // Return a Boolean if there are 2 numbers in the array that equal a sum
let numbers = [1,3,6,7,7,12,14]

// // 1. Brute Force - Nested For-Loop compare all (n2)

// // 2. Binary Search for compliment (because its sorted) - n log n2

// // Move pointer from either end - linear O(n) = / is good
func twoSumPointers(array: [Int], sum: Int) -> Bool {

  var lowIndex = 0
  var highIndex = array.count - 1

  while lowIndex < highIndex {

    let sumOfItems = array[lowIndex] + array[highIndex]

    if sumOfItems == sum {
      print("Sum of \(array[lowIndex]) and \(array[highIndex])) = \(sum)")
      return true
    
    } else if sumOfItems < sum {
      lowIndex += 1

    } else if sumOfItems > sum {
      highIndex -= 1
    }
  }

  print("Pointers have crossed")
  return false
}

twoSumPointers(array: numbers, sum: 13)
