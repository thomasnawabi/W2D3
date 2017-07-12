require 'byebug'
class Towers

  attr_reader :towers

  def initialize(towers=nil)
    if towers.nil?
      @towers = Array.new(3) { Array.new }
      @towers[0] = [*1..3]
    else
      @towers = towers
    end
  end

  def move(start_tower, end_tower)

    raise StandardError.new("Can't move disc from empty tower.") if start_tower.empty?
    if end_tower.empty? || (start_tower.first < end_tower.first)
      return end_tower.unshift(start_tower.shift)
    end
    raise StandardError.new("Can't move bigger disc on top of a smaller disc.") if start_tower.first > end_tower.first
  end

  def won?
    self.towers[0].empty? && self.towers[1].empty? && !self.towers[2].empty?
  end

end
