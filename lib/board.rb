class Game
  attr_reader :board, :counter

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @counter = 0
  end

  def count
    @counter += 1
  end

  def add_board(number)
    @board[number - 1] = if @counter.odd?
                           'X'
                         else
                           'O'
                         end
  end

  def display
    ['+---+---+---+',
     "| #{@board[0]} | #{@board[1]} | #{@board[2]} |",
     '+---+---+---+',
     "| #{@board[3]} | #{@board[4]} | #{@board[5]} |",
     '+---+---+---+',
     "| #{@board[6]} | #{@board[7]} | #{@board[8]} |",
     '+---+---+---+']
  end
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ].freeze
  def won?
    WIN_COMBINATIONS.detect do |i|
      @board[i[0]] == @board[i[1]] && @board[i[1]] == @board[i[2]]
    end
  end

  def tie?
    @board.none? { |a| a.is_a?(Integer) }
  end
end
