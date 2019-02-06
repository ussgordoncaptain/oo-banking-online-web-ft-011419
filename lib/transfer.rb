class Transfer
  # your code here
  def initialize(sender,reciver, num)
    @sender = sender 
    @receiver = reciver
    @status = "pending"
    @amount = num
  end
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def execute_transaction 
    if @status == "complete" || @status == "reversed"
      return nil
    end
    if @amount > @sender.balance || @sender.status == "closed"  
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
    
    @sender.balance -= @amount 
    @receiver.balance += @amount
    @status = "complete"
  end
  def reverse_transfer
    if @status == "complete"
      @status = "reversed"
      @sender.balance += @amount
      @receiver.balance -= @amount
    else
      return nil
    end
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end
end
