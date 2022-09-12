const solve = (nums, target) => {
  let map = new Map();
  let result
  nums.forEach((num, index) => {
    map.set(num, index)
  })

  nums.forEach((num, index) => {
    complement = (target - num)
    exist_in_map = map.get(complement) != undefined
    if (exist_in_map && map.get(complement) != index) {
      result = [index, map.get(complement)]
    }
  })
  return result
}


const nums = [2, 5, 5, 11]
const target = 10
console.log(solve(nums, target))