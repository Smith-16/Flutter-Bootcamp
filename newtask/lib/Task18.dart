void main() {
  BankAccount account = BankAccount("001", "John Doe", 500);
  account.checkBalance();
  account.deposit(150);
  account.withdraw(100);
  account.withdraw(600); // Should print error
}

class BankAccount {
  String accountNumber;
  String holder;
  double balance;

  BankAccount(this.accountNumber, this.holder, [this.balance = 0]);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrew: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds.");
    }
  }

  void checkBalance() {
    print("Balance: \$${balance.toStringAsFixed(2)}");
  }
}
