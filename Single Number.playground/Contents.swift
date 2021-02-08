/*
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.

 Note:

 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

 Example 1:

 Input: [2,2,1]
 Output: 1
 Example 2:

 Input: [4,1,2,1,2]
 Output: 4
 */
var example1 = [2,2,1]
let example2 = [4,1,2,1,2]

func singleNumber(_ nums: [Int]) -> Int {
  var sortedNums  =  nums.sorted()
  var returnValue = 0
  for _ in sortedNums {
    returnValue = sortedNums.removeLast()
    if sortedNums.contains(returnValue) {
      sortedNums.removeLast()
    } else {
      return returnValue
    }
    
  }
  return returnValue
  
}
 

singleNumber(example1)
singleNumber(example2)

