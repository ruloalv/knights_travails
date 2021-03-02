require_relative '../lib/knight'

describe Knight do
	describe '#initialize' do
		context 'when new knight without parameters' do
			subject(:knight_new) {described_class.new}
			it 'return history ==[[0,0]]' do
				expect(knight_new.history).to eq([[0,0]])
			end
			it 'return position == [0,0]' do
				expect(knight_new.position).to eq([0,0])
			end
			it 'return parent to be nil' do
				expect(knight_new.parent).to be_nil
			end
		end
	end

	describe '#valid_position' do
		subject(:knight_moves) {described_class.new}
		it 'return true if the position is between 0 and 7 (inside board boundaries)' do
			expect(knight_moves.valid_position([0,0])).to be true
		end

		it 'return false if the position is not between 0 and 7 (inside board boundaries)' do
			expect(knight_moves.valid_position([0,8])).to be false
		end
	end

	describe '#posible_moves' do
		context 'given a position return al posible moves' do
			subject(:knight_posibles) {described_class.new}
			it 'when position is [4,4] return [[3,6][3,2][5,6][5,2][6,3][6,5][2,3][2,5]]' do
				expect(knight_posibles.posible_moves).to eq([[1,2],[2,1]])
			end
		end
		context 'given a position return al posible moves' do
			subject(:knight_posibles) {described_class.new(position)}
			let(:position) {[4,4]}
			it 'when position is [4,4] return [[3,6][3,2][5,6][5,2][6,3][6,5][2,3][2,5]]' do
				expect(knight_posibles.posible_moves).to eq([[3,6],[3,2],[5,6],[5,2],[6,3],[6,5],[2,3],[2,5]])
			end
		end
	end

	describe '#knight_moves' do
		context 'given a initial position and a final position, print the path' do
			subject(:knight) {described_class.new([1,1])}
			it 'moves from [1,1] to [3,2]' do
				expect(knight.knight_moves([1,1],[3,2])).to eq([3,2])
			end
		end
	end
end