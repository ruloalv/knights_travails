class knight
	
	attr_reader :position, :from, :history
	MOVES = [[-1,+2],[-1,-2],[+1,+2],[+1,-2],[+2,-1],[+2,+1],[-2,-1],[-2,+1]]

	def initialize(position = [0,0])
		@position = position
		@from = position
		@history = [].push(position)
	end

	
end