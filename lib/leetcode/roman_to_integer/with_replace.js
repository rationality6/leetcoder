const roman_table = {
  "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
}

const solution = (roman_string) => {
  let result_counter = 0

  roman_string = roman_string.replace("IV", "IIII")
    .replace("IX", "VIIII")
    .replace("XL", "XXXX")
    .replace("XC", "LXXXX")
    .replace("CD", "CCCC")
    .replace("CM", "DCCCC")

  let roman_array = roman_string.split('')

  roman_array.forEach(element => {
    result_counter += roman_table[element]
  });

  return result_counter
}

s0 = "III"
s1 = "LVIII"
s2 = "MCMXCIV"

console.log(solution(s0))
console.log(solution(s1))
console.log(solution(s2))



