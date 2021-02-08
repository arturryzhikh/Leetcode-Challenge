import Foundation

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 You can return the answer in any order.
 
 
 
 Example 1:
 
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:
 
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:
 
 Input: nums = [3,3], target = 6
 Output: [0,1]
 */
var example = [2,7,11,15]
var example1 = [3,2,4]
var example2 = [3,3]
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
     
      var startIndex: Int = 0
      for firstIndex in startIndex..<nums.count {
          let x = nums[firstIndex]
          let y = target - x
          let arraySlice = nums[(startIndex + 1)...]
          if let secondIndex = arraySlice.firstIndex(of: y) {
              return [firstIndex,secondIndex]
          } else {
              startIndex += 1
          }
      }
     
      return []
}
twoSum(example, 9)
twoSum(example1, 6)
twoSum(example2,6)

