# Series Challenge

class Series
  def initialize(string)
    @string = string
  end

  def slices(length)
    raise ArgumentError unless @string.size >= length
    counter = 0
    arr = @string.split('').map(&:to_i)
    result = []
    while counter <= arr.size - 1
      result << arr.slice(counter, length) if arr.slice(counter, length).size == length
      counter += 1
    end
    result
  end
end
