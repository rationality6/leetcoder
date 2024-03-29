const solve = (nums, target) => {
  let map = new Map();
  let result

  nums.forEach((num, index) => {
    complement = (target - num)
    console.log(complement)
    exist_in_map = map.get(complement) != undefined
    if (exist_in_map && map.get(complement) != index) {
      result = [map.get(complement),index]
    }
    map.set(num, index)
  })
  return result
}


const nums = [2, 5, 5, 11]
const target = 10
console.log(solve(nums, target))
