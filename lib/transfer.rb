class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount

  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if sender.valid? && receiver.valid? && @status == 'pending' && sender.balance > @amount
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = 'complete'
    else
      return "Transaction rejected. Please check your account balance."
      @status = 'rejected'

    end

  end
  # your code here
end
