# Input: nums = [1,3,5,6]
# target = 5
# Output: 2

def answer(nums,target)
    result = nums.dup
    result_index = 0
    nums.each_with_index do |num, index|
        if target <= num
            result.insert(index, target)
            return index
        end
    end
    return nums.length
end

nums = [1,3,5,6]
target = 5
p answer(nums, target) == 2

nums = [1,3,5,6]
target = 2
p answer(nums, target) == 1

nums = [1,3,5,6]
target = 7
p answer(nums, target) == 4


p ['teacher','student'][rand(2)]


foo = {a:"a"}
bar = foo.merge(b: "b")
p foo
p bar