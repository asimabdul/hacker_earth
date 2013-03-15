class DigitalProcessor
  attr_accessor :number, :meta
  def initialize(number)
    @number = number
    @meta = {0 => 6, 1 => 2, 2 => 5, 3 => 5,
             4 => 4, 5 => 5, 6 => 6, 7 => 3,
             8 => 7, 9 => 6}
  end
  
  def count_dashes
    input_digits = @number.to_s.split(//).map {|x| x.to_i}
    input_digits.map! {|x| x = @meta[x]}
    input_digits.inject(0) {|sum, x| sum + x}
  end
  
end