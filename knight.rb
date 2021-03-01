class knight
	MOVES = [[-1,+2],[-1,-2],[+1,+2],[+1,-2],[+2,-1],[+2,+1],[-2,-1],[-2,+1]]
	attr_reader :position, :from, :history

	def initialize(position = [0,0])
		@position = position
		@from = position
		@history = [].push(position)
	end
end