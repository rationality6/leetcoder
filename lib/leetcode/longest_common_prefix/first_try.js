// Input: strs = ["flower","flow","flight"]
// Output: "fl"

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

const longestCommonPrefix = (str_array) => {
  const sorted_array = str_array.sort((a, b) => a.length - b.length);
  let result = ''

  sorted_array[0].split('').every((i, index) => {
    let is_common = true

    sorted_array.every((j) => {
      if (i != j[index]) {
        is_common = false
        return false
      }
      return true
    })

    if (is_common) {
      result += i
      return true
    }
    return false

  })

  return result
};


strs = ["flower", "flow", "flight"]

console.log(longestCommonPrefix(strs))

