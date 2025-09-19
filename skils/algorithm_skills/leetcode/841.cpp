#include <cassert>
#include <queue>
#include <iostream>
#include <vector>


class Solution {
public:
    bool canVisitAllRooms(std::vector<std::vector<int>>& rooms) {
        std::vector<bool> visited(rooms.size(), false);

        std::queue<int> qu;
        qu.push(0);
        visited[0] = true;

        while (!qu.empty()) {
            int current = qu.front();
            qu.pop();

            for (int key : rooms[current]) {
                if (!visited[key]) {
                    visited[key] = true;
                    qu.push(key);
                }
            }
        }

        for (bool flag : visited) {
            if (flag == false) return false;
        }
        return true;
    }
};

int main() {
    Solution sol;
    std::vector<std::vector<int>> b {{1}, {2}, {3}, {}};
    std::cout << sol.canVisitAllRooms(b) << std::endl;
    return 0;
}