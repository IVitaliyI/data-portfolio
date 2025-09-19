#include <string>
#include <iostream>

// Input: s = "0101"
// Output: "1001"

class Solution {
public:
    std::string maximumOddBinaryNumber(std::string s) {
        unsigned count = 0;
        for (auto sym : s) {
            if (sym == '1') {
                count++;
            }
        }
        std::string result = "";
        while (count != 1) {
            result += "1";
            count--;
        }

        while (result.length() < s.length() - 1) {
            result += "0";
        }
        result += "1";
        return result;
    }
};

int main() {
    Solution sol = Solution();
    std::string s;
    std::cin >> s;
    std::cout << sol.maximumOddBinaryNumber(s) << std::endl;
    return 0;
}