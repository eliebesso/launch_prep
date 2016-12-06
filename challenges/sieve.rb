# Sieve Challenge
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    counter = 2
    initial_array = counter.upto(@limit).to_a
    list_of_primes = []
    loop do
      prime = []
      initial_array.each { prime << i if (i % counter).zero? }
      initial_array.delete_if { |i| prime.include?(i) }
      list_of_primes << prime[0] if prime[0]
      counter += 1
      break if counter == @limit
    end
    list_of_primes
  end
end

# primes(1000) #=> [2, 3, 5, 7]
