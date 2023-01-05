const roman_table = {
  "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
}

const solution = (roman_string) => {
  let roman_array = roman_string.split('')
  let result_counter = 0

  for (let i = roman_array.length - 1; i >= 0; i -= 1) {
    if (4 * roman_table[roman_array[i]] < result_counter) {
      result_counter -= roman_table[roman_array[i]]
    } else {
      result_counter += roman_table[roman_array[i]]
    }
  }

  return result_counter
}

s0 = "III"
s1 = "LVIII"
s2 = "MCMXCIV"

console.log(solution(s0))
console.log(solution(s1))
console.log(solution(s2))



