require 'byebug'
require 'rspec'
require 'towers'

describe Towers do

  describe "#move" do

    it "should move top disc into empty tower" do
      t = Towers.new
      t.move(t.towers[0], t.towers[2])
      expect(t.towers[2]).to eq [1]
    end

    it "shouldn't move bigger disc on top of a smaller disc" do
      t = Towers.new([[3], [], [1,2]])
      expect { t.move(t.towers[0], t.towers[2]) }.to raise_error
    end

    it "shouldn't move disc from empty tower" do
      t = Towers.new
      expect { t.move(t.towers[1], t.towers[2]) }.to raise_error
    end

  end

  describe "#win" do
    it "should declare game won if first two towers are empty" do
      t = Towers.new([[], [], [1,2,3]])
      expect(t.won?).to be true
    end
  end





end
