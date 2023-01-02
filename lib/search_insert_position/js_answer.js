// # @param {Integer[]} nums
// # @param {Integer} target
// # @return {Integer}
// def search_insert(nums, target)
//     result = nums.dup
//     result_index = 0
//     nums.each_with_index do |num, index|
//         if target <= num
//             result.insert(index, target)
//             return index
//         end
//     end
//     return nums.length
// end

const search_insert = (nums, target) => {
  nums.each
  return
}


// nums = [1,3,5,6]
// target = 5
// p answer(nums, target) == 2

// nums = [1,3,5,6]
// target = 2
// p answer(nums, target) == 1

// nums = [1,3,5,6]
// target = 7
// p answer(nums, target) == 4
