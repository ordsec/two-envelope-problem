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
      ok_amount = rand(10..500)
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
    results = [always_one(0), always_one(1), cover_method]

    puts "\nTotals after #{@iterations} iterations:"
    puts "=============================="
    print "Always first envelope: \t\t$#{results[0]}"
    print "\tGOT THE MOST" if results.max == results[0]
    puts
    print "Always second envelope: \t$#{results[1]}"
    print "\tGOT THE MOST" if results.max == results[1]
    puts
    print "Using Tom Cover's method: \t$#{results[2]}"
    print "\tGOT THE MOST" if results.max == results[2]
    puts
  end

end
