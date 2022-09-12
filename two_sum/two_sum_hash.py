def twoSum(nums, target):
    hashmap = {}
    for i in range(len(nums)):
        hashmap[nums[i]] = i
    print(hashmap)
    for i in range(len(nums)):
        complement = target - nums[i]
        if complement in hashmap and hashmap[complement] != i:
            return [i, hashmap[complement]] 


nums = [2,5,5,11]
target = 10

print(twoSum(nums, target))
