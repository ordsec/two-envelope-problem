class EnvelopePair

  attr_reader :pair

  def initialize
    @pair = []
    create_envelopes
  end

  def create_envelopes
    amount1 = rand(1..1000)
    amount2 = amount1 * 2

    if rand(1..100) > 50
      amount1, amount2 = amount2, amount1
    end

    @pair << Envelope.new(amount1)
    @pair << Envelope.new(amount2)
  end

end
