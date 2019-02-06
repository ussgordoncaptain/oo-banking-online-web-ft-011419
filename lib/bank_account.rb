class BankAccount
  def initialize(name)
    @name = name
    @status = "open"
    @balance = 1000
  end
  attr_reader :name 
  attr_accessor :status, :balance
  def deposit(num)
    @balance += num
  end
  def valid?
    if @status != "closed" && @balance > 0 
      return true 
    else
       return false 
    end 
   end
   def close_account
     @status = "closed"
   end
   def display_balance 
     "Your balance is $#{@balance}."
   end
   
end
