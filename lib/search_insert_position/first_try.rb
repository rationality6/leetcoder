# Input: nums = [1,3,5,6]
# target = 5
# Output: 2

def answer(nums,target)
    result = nums.dup
    nums.each_with_index do |num, index|
        if target < num
            result.insert(index, target)
        end
    end
    result
end

nums = [1,3,5,6]
target = 5

p answer(nums, target)
