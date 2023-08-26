abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}");
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print("Withdrawn: \$${amount.toStringAsFixed(2)}, "
          "Remaining Balance: \$${balance.toStringAsFixed(2)}");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}, "
            "Remaining Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds for withdrawal");
    }
  }
}

void main() {
  // Creating a SavingsAccount instance
  var savingsAccount = SavingsAccount(12345, 1000.0, 0.05);
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(300.0);

  // Creating a CurrentAccount instance
  var currentAccount = CurrentAccount(67890, 2000.0, 1000.0);
  currentAccount.deposit(800.0);
  currentAccount.withdraw(3000.0);
}
