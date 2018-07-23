class BankAccount

  @@interest_rate = 0.01
  @@accounts = []

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def balance=(balance)
    @balance = balance
  end

  def deposit(number)
    deposit += balance
  end

  def withdraw(number)
    withdraw -= balance
  end

  def self.create
    BankAccount.new += @@accounts
  end

  def self.total_funds
    self.total_fund += @@accounts
  end

  def self.interest_time
    @balance += @@accounts
  end

end

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
