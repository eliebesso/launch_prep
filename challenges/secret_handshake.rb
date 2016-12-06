# Handshake Challenge
class SecretHandshake
  def initialize(int)
    @int = int.to_i
  end

  def commands
    conversion = []
    while @int > 0
      @int, remainder = @int.divmod(2)
      conversion << remainder
    end
    binary_num = conversion.join.reverse.to_i
    join_moves(binary_num)
  end

  def evaluate_move(num)
    num.to_s.split('').last == '1'
  end

  def join_moves(binary)
    moves = []
    moves << 'wink' if evaluate_move(binary)
    moves << 'double blink' if evaluate_move(binary / 10)
    moves << 'close your eyes' if evaluate_move(binary / 100)
    moves << 'jump' if evaluate_move(binary / 1000)

    binary / 10_000 == 1 ? moves.reverse : moves
  end
end
