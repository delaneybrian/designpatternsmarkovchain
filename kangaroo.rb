require_relative 'grid'
require_relative 'dice'

class Kangaroo

  def initialize(dice)
    @dice = dice
  end

  def place_on_grid(grid)
    @grid = grid
    @grid.add_kangaroo
  end

  def random_move
    direction = @dice.roll

    if direction == :north
      @grid.try_move_north
    elsif direction == :south
      @grid.try_move_south
    elsif direction == :east
      @grid.try_move_east
    else
      @grid.try_move_west
    end
  end

  def has_reached_end
    return @grid.has_reached_end
  end

end