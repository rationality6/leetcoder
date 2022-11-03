class Solution(object):

    def isToeplitzMatrix(self, matrix):
        return all(r == 0 or c == 0 or matrix[r - 1][c - 1] == val
                   for r, row in enumerate(matrix)
                   for c, val in enumerate(row))


matrix = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
matrix1 = [[1, 2, 3, 44], [5, 1, 2, 3], [99, 5, 1, 2]]
matrix2 = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 1]]

instanse0 = Solution()

print(instanse0.isToeplitzMatrix(matrix))
print(instanse0.isToeplitzMatrix(matrix1))
print(instanse0.isToeplitzMatrix(matrix2))
