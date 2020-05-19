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
    if sender.valid? && reciever.valid?
      @receiver.balance += @amount
      @sender.balance -= @amount
    else
      "Transaction rejected. Please check your account balance."
    end

  end
  # your code here
end
