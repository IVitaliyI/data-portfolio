#include <vector>
#include <iostream>

class Solution {
public:
    int numSubarrayProductLessThanK(std::vector<int>& nums, int k) {
        std::vector<int> dp(nums.size());
        dp[0] = 0;
        for (int i = 0; i < nums.size(); ++i) {
            int current_product = 1;
            int count = 0;
            for (int j = 0; j <= i; ++j) {
                current_product = current_product * nums[i - j];
                if (current_product < k) count++;
                else break;
            }
            if (i == 0) dp[i] = count;
            else dp[i] = dp[i - 1] + count; 
        }   
        return dp[nums.size() - 1];     
    }
};

int main() {
    Solution sol;
    std::vector<int> task {10, 5, 2, 6}; 
    std::vector<int> task2 {1, 2, 3}; 
    std::cout << sol.numSubarrayProductLessThanK(task2, 0) << std::endl;
}

