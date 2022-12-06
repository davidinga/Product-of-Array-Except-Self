/*
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.
*/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result: [Int] = Array(repeating: 1, count: nums.count)

    var prefix = 1
    for i in result.indices {
        result[i] = prefix
        prefix *= nums[i]
    }

    var postfix = 1
    for i in result.indices.reversed() {
        result[i] *= postfix
        postfix *= nums[i]
    }

    return result
}