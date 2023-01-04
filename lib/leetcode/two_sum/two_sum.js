// /**
//  * @param {number[]} nums
//  * @param {number} target
//  * @return {number[]}
//  */

const twoSum = (nums, target) => {
  let result

  try {
    nums.forEach((num0, index0)=> {
      nums.forEach((num1, index1) => {
        if (index0 != index1) {
          if ((num0 + num1) == target) {
            result = [index0, index1]
            throw new Error("find")
          }
        }
      })
    })
  } catch (e) {

  }

  return result
};


const nums = [3, 3]
const target = 6

result = twoSum(nums, target)
console.log(result)
