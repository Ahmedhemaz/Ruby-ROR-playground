class Account
  attr_accessor :balance

  def initialize(amount = 0)
    @balance = amount
  end

  def +(other)
    balance + other
  end

  def -(other)
    balance - other
  end

  def to_s
    balance.to_s
  end
end

account = Account.new(20)
account -= 5
puts account.to_s
