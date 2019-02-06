class Transfer
  # your code here
  def initialize(sender,reciver, num)
    @sender = sender 
    @receiver = reciver
    @status = "pending"
    @amount = num
  end
  attr_accessor :status
  def execute_transaction 
    if @status == "complete" || @status == "reversed"
      return nil
    end
    if @amount > @sender.balence || @sender.status == "closed"  
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
    end
    @sender.balence -= @amount 
    @receiver.balence += @amount
    @status = "complete"
  end
  def reverse_transfer
    if @status == "complete"
      @status = "rejected"
      @sender.balence += @amount
      @receiver.balence -= @amount
    else
      return nil
    end
end
