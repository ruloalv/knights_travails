class Knight
	
	attr_reader :position, :parent, :history
	
	@@MOVES = [[-1,+2],[-1,-2],[+1,+2],[+1,-2],[+2,-1],[+2,+1],[-2,-1],[-2,+1]]

	def initialize(position = [0,0], parent = nil)
		@position = position
		@parent = parent
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

	def display_path(node)
	end

	def knight_moves(origin, final)
		current_node = Knight.new(origin, nil)
		lvl_order = []
		
		until current_node.position == final
			current_node.posible_moves.each {|pos| lvl_order.push(Knight.new(pos, current_node))}
			current_node = lvl_order.shift
		end
		display_path(current_node)
		current_node.position
	end
end