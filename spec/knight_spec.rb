require_relative '../lib/knight'

describe Knight do
	subject(:knight_moves) {described_class.new}

	describe '#valid_position' do
		it 'return true if the position is between 0 and 7 (inside board boundaries)' do
			expect(knight_moves.valid_position([0,0])).to be true
		end

		it 'return false if the position is not between 0 and 7 (inside board boundaries)' do
			expect(knight_moves.valid_position([0,8])).to be false
		end
	end
end