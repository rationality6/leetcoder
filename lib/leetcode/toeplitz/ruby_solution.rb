class Solution
  def isToeplitzMatrix(matrix_array)
    hash_for_save = {}

    matrix_array.map.with_index do |array, x_index|
      array.map.with_index do |val, y_index|
        target_index = x_index - y_index
        if !(hash_for_save.key? target_index)
          hash_for_save[target_index] = val
        elsif hash_for_save[target_index] != val
          return false
        end
      end
    end
    true
  end
end

matrix = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
matrix1 = [[1, 2, 3, 44], [5, 1, 2, 3], [99, 5, 1, 2]]
matrix2 = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 1]]

p Solution.new.isToeplitzMatrix(matrix)
p Solution.new.isToeplitzMatrix(matrix1)
p Solution.new.isToeplitzMatrix(matrix2)

