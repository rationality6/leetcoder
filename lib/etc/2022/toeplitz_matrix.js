const is_toeplitz = (data) => {
  object_hash = {}
  let result = true
  data.map((row, x_number) => {
    row.map((val, y_number) => {
      const target_index = x_number - y_number
      if (!(target_index in object_hash)) {
        object_hash[target_index] = val
      } else if (object_hash[target_index] != val) {
        result = false
      }
    })
  })
  return result
}

matrix = [
  [1, 2, 3, 4],
  [5, 1, 2, 3],
  [9, 5, 1, 2]
]
matrix1 = [
  [1, 2, 3, 44],
  [5, 1, 2, 3],
  [99, 5, 1, 2]
]
matrix2 = [
  [1, 2, 3, 4],
  [5, 1, 2, 3],
  [9, 5, 1, 1]
]

console.log(is_toeplitz(matrix))
console.log(is_toeplitz(matrix1))
console.log(is_toeplitz(matrix2))