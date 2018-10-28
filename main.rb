require_relative 'grid'
require_relative 'kangaroo'
require_relative 'dice'

puts 'Enter dimension of the Grid (>=1):'
grid_size = gets.chomp

dice = Dice.new

grid = Grid.new(grid_size.to_i)

skippy = Kangaroo.new(dice)

skippy.place_on_grid(grid)

while(!skippy.has_reached_end)
  skippy.random_move
end

dice.print_statistics