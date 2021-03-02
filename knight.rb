class knight
	
	attr_reader :position, :from, :history
	MOVES = [[-1,+2],[-1,-2],[+1,+2],[+1,-2],[+2,-1],[+2,+1],[-2,-1],[-2,+1]]

	def initialize(position = [0,0])
		@position = position
		@from = position
		@history = [].push(position)
	end

	def valid_position(position)
		position[0].between?(0,7) && position[1].between?(0,7)
	end
end