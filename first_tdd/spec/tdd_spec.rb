require 'rspec'
require 'tdd'
# describe ClassName
#   describe '#method_name'
#
#     it "aksldjas"
#
#     end
#
#   end
# end

describe Array do


  describe '#my_uniq' do
    let(:arr) { [1, 2, 1, 3, 3] }
    it "should return unique elements" do
      expect(arr.my_uniq).to eq arr.uniq
    end
  end

  describe '#two_sum' do
    let(:arr) { [-1, 0, 2, -2, 1] }
    it "finds pairs of positions where elements at those positions sum to zero." do
      expect(arr.two_sum).to eq [[0, 4], [2, 3]]
    end
  end

  describe '#my_transpose' do
    let(:rows) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    it "transposes the matrix" do
      expect(rows.my_transpose).to eq rows.transpose
    end
  end

  describe '#stock_picker' do
    let(:prices) { [1, 3, 2, 5] }
    it "picks most profitable pair" do
      expect(prices.stock_picker).to eq [0, 3]
    end
  end
  
end
