#include <ctime>
#include <cstdlib>
#include <iostream>

struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
    Solution(ListNode* head) {
        this->head = head;
        std::srand(static_cast<unsigned int>(std::time(nullptr)));
    }
    
    int getRandom() {
        int result = 0;
        int count = 0;
        ListNode *current = head;

        while (current != nullptr) {
            count++;
            int RandomNumber = std::rand();
            if (RandomNumber % count == 0) {
                result = current->val;
            }
            current = current->next;
        }
        return result;
    }
private:
    ListNode *head = nullptr;
};

/**
 * Your Solution object will be instantiated and called as such:
 * Solution* obj = new Solution(head);
 * int param_1 = obj->getRandom();
 */