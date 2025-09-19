#include <vector>

class Bank {
public:
    Bank(std::vector<long long>& balance) {
        this->balance = balance;
    }
    
    bool check_account(int account) {
        if (account > 0 && account <= this->balance.size()) return true;
        return false;
    }

    bool transfer(int account1, int account2, long long money) {
        if (!check_account(account1) || !check_account(account2)) return false;

        if (this->balance[account1 - 1] - money >= 0) {
            this->balance[account1 - 1] -= money;
            this->balance[account2 - 1] += money;
            return true;
        }
        return false;
    }
    
    bool deposit(int account, long long money) {
        if (!check_account(account)) return false;
        this->balance[account - 1] += money;
        return true;
    }
    
    bool withdraw(int account, long long money) {
        if (!check_account(account)) return false;
        if (this->balance[account - 1] - money >= 0) {
            this->balance[account - 1] -= money;
            return true;
        } else return false;
    }
private:
std::vector<long long> balance;
};

/**
 * Your Bank object will be instantiated and called as such:
 * Bank* obj = new Bank(balance);
 * bool param_1 = obj->transfer(account1,account2,money);
 * bool param_2 = obj->deposit(account,money);
 * bool param_3 = obj->withdraw(account,money);
 */