class Picker

  def initialize(iterations)
    @iterations = iterations
  end

  def always_one(idx)
    total = 0
    @iterations.times do
      total += EnvelopePair.new.pair[idx].amount
    end

    total
  end

  def cover_method
    total = 0
    @iterations.times do
      # pick random envelope
      # idx = rand(0..1) # pick envelopes randomly?
      pair = EnvelopePair.new.pair
      # pick amount we're ok with
      ok_amount = rand(10..1000)
      # proceed if we're ok with the amount in envelope
      if pair[0].amount >= ok_amount
        total += pair[0].amount
      # otherwise, switch envelopes
      else
        total += pair[1].amount
        # idx == 0 ? total += pair[1].amount : pair[0].amount
      end
    end

    total
  end

  def compare_all
    puts "\nTotals after #{@iterations} iterations:"
    puts "=============================="
    puts "Always first envelope: \t\t$#{always_one(0)}"
    puts "Always second envelope: \t$#{always_one(1)}"
    puts "Using Tom Cover's method: \t$#{cover_method}"
  end

end
