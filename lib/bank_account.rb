class BankAccount
  def initialize(name)
    @name = name
    @status = "open"
    @balence = 1000
  end
  attr_reader :name 
  attr_accessor :status, :balence
  def deposit(num)
    @balence += num
  end
  def valid?
    if @status == "closed" || @balence > 0 
      return true 
    else
     return false 
    end 
   end
   def close_account
     @status = "closed"
   end
end
