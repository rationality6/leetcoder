array0 = [1, 2, 3, 4]
array1 = [7, 8, 9]

const solution = (array0, array1) => {
  let total_length = array0.length + array1.length
  let result = []

  for (let i = 0; i < total_length; i += 1) {

    if (array0[0] < array1[0]) {
      result.push(array0[0])
      array0.shift(0)
    } else {
      result.push(array1[0])
      array1.shift(0)
    }

  }
  return result
}

console.log(solution(array0, array1))