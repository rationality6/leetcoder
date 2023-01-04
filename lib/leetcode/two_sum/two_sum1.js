// /**
//  * @param {number[]} nums
//  * @param {number} target
//  * @return {number[]}
//  */

const twoSum = (nums, target) => {
  for (let i = 0; i < nums.length; i += 1) {
    for (let j = 0; j < nums.length; j += 1) {
      if (i != j) {
        if ((nums[i] + nums[j]) == target) {
          return [i, j]
        }
      }
    }
  }
};


const nums = [3, 3]
const target = 6

result = twoSum(nums, target)
console.log(result)