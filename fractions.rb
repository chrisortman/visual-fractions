class Fraction
  attr_accessor :numerator, :denominator

  def initialize(n,d)
    @numerator = n
    @denominator = d
  end
end


def print_grid(*args)
  inputs = [Fraction.new(args[0],args[1]),Fraction.new(args[2],args[3])]

  cols, rows = inputs[0].denominator, inputs[1].denominator

  (1..rows).each do |row_num|

    line = ""

    (1..cols).each do |col_num|

      # puts "Row: #{row_num} Col: #{col_num}"

      if row_num <= inputs[1].numerator && col_num <= inputs[0].numerator then
        line << "X"
      elsif row_num < inputs[1].numerator
        line << "/"
      elsif col_num < inputs[0].numerator 
        line << "\\"
      else
        line << "_"
      end

    end

    puts line
  end

end

print_grid(8,9,2,3)
