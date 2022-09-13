const isPalindrome = (num) => {
  const array_num = num.toString().split('')
  const reversed_array = num.toString().split('').reverse()
  return JSON.stringify(reversed_array) === JSON.stringify(array_num)
}

console.log(isPalindrome(1234321))
console.log(isPalindrome(1224321))