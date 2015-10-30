require "pp"

class Board
	def grid
		board = Array.new(8) {Array.new(8)}
		(0..7).each do |row|
      (0..7).each do |cell|
        board[row][cell]='-'
      end
    end
    include_piece
  end

  def include_piece(name)
    board[0][0] = "wR"
    if board.indlude? "R"
    	Rook.new("wR",(0,0),(0,1))
    end
    pp board
  end
end

attr_reader :name, :position1, :position2
class Piece
	def initialize(name,position1,position2)
		@name = name
		@position1 = []
		@position2 = []
	end
end

class Rook < Piece
	def move_rook
		@board[position1[0]]position1[1]
	end

	def show_rook
		puts @position1
	end
end

simpleboard = Board.new
simpleboard.show_rook