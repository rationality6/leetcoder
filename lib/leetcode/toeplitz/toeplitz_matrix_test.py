class Solution(object):

    def isToeplitzMatrix(self, matrix):
        groups = {}
        for r, row in enumerate(matrix):
            for c, val in enumerate(row):
                if r - c not in groups:
                    groups[r - c] = val
                elif groups[r - c] != val:
                    return False
        return True


instan0 = Solution()

matrix = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
matrix1 = [[1, 2, 3, 44], [5, 1, 2, 3], [99, 5, 1, 2]]
matrix2 = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 1]]

print(instan0.isToeplitzMatrix(matrix))
print(instan0.isToeplitzMatrix(matrix1))
print(instan0.isToeplitzMatrix(matrix2))
