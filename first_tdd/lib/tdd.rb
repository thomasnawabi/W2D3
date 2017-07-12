require "byebug"
class Array

  def my_uniq
    res = []
    self.each { |x| res << x unless res.include?(x) }
    res
  end

  def two_sum
    res = []
    self.each_with_index do |x , i|
      self.each_with_index do |y, j|
        next if i == j || j < i
        res << [i , j] if x + y == 0
      end
    end
    res
  end

  def my_transpose
    res = []
    self.first.length.times do |i|
      res << self.map { |row| row[i]}
    end
    res
  end

  def stock_picker
    res = []
    max_difference = 0
    max_difference_pair = nil
    self.each_with_index do |x , i|
      self.each_with_index do |y, j|
        next if i == j || j < i

        if (y - x) > max_difference
          max_difference = y - x
          max_difference_pair = [i, j]
        end
      end
    end
    max_difference_pair
  end


end
