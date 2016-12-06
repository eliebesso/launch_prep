# Octal Challenge
class Octal
  def initialize(int)
    @int = int
  end

  def to_decimal
    return 0 if @int.split('').last == '8' || @int.split('').last == '9'
    result = 0
    counter = 0
    while n < @int.split('').size
      element = @int.to_i / (10**counter) % 10
      result += element * 8**counter
      counter += 1
    end
    result
  end
end
