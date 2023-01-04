const isPalindrome = x => {
  const number_array = String(x).split("")
  const array_half_length = Math.floor((number_array.length) / 2)
  let end_count_index = number_array.length - 1
  let result = true

  for (let i = 0; i < array_half_length; i += 1) {
    if (number_array[i] != number_array[end_count_index]) {
      result = false
      break
    }
    end_count_index -= 1
  }
  return result
};

test0 = 12321
test1 = -121

console.log(isPalindrome(test0))
console.log(isPalindrome(test1))