#include <vector>
#include <climits>
#include <iostream>

class Solution {
public:
    int maximumSum(std::vector<int>& arr) {
        int n = arr.size();
        std::vector<int> dp0(n), dp1(n);
        dp0[0] = arr[0];
        dp1[0] = INT_MIN;
        
        int ans = dp0[0];
        for (int i = 1; i < n; i++) {
            dp0[i] = std::max(dp0[i - 1] + arr[i], arr[i]);
            if (dp1[i - 1] == INT_MIN)
                dp1[i] = dp0[i - 1];
            else 
                dp1[i] = std::max(dp1[i - 1] + arr[i], dp0[i - 1]);
            ans = std::max(std::max(dp0[i], dp1[i]), ans);
        }

        return ans;
    }
};

int main() {
    std::vector<int> arr = {1, -2, 0, 3};
    Solution sol;
    std::cout << sol.maximumSum(arr) << std::endl;
    return 0;
}