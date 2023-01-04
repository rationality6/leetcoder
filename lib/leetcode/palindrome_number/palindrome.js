/**
 * @param {number} num
 * @return {boolean}
 */

const isPalindrome = (num) => {
  const string_num = num.toString()
  const array_num = string_num.split('')
  const half_floor_length = Math.floor(array_num.length / 2)

  let is_palindrome = true

  for (let index = 0; index < half_floor_length; index += 1) {
    const left = array_num[index]
    const right = array_num[(array_num.length - 1) - index]

    if (left != right) {
      is_palindrome = false
    }
  }
  return is_palindrome
}

console.log(isPalindrome(1234321))
console.log(isPalindrome(1224321))