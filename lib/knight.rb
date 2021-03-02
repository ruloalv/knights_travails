class Knight
	
	attr_reader :position, :from, :history
	@@MOVES = [[-1,+2],[-1,-2],[+1,+2],[+1,-2],[+2,-1],[+2,+1],[-2,-1],[-2,+1]]

	def initialize(position = [0,0])
		@position = position
		@from = position
		@history = [].push(position)
	end

	def valid_position(position)
		position[0].between?(0,7) && position[1].between?(0,7)
	end

	def posible_moves
		@@MOVES.map { |x| [@position[0] + x[0], @position[1] + x[1]]}
			   .keep_if { |k| self.valid_position(k)}
			   .reject { |r| @history.include?(r)}
	end
end