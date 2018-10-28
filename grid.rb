require_relative 'point'

class Grid

  attr_reader :kangaroo_location

  def initialize(grid_size)
    @grid_max_x = grid_size
    @grid_max_y = grid_size

    @grid_points = Array.new(@grid_max_x) { Array.new(@grid_max_y)}

    current_x = 0
    while current_x < @grid_max_x
      current_y = 0
      while current_y < @grid_max_y
        @grid_points[current_x][current_y] = Point.new(current_x, current_y)
        current_y = current_y + 1
      end
      current_x = current_x + 1
    end
  end

  def has_reached_end

    if @kangaroo_location.x_coordinate == 0 and @kangaroo_location.y_coordinate == @grid_max_y - 1
      return true
    end
    return false
  end

  def add_kangaroo
    @kangaroo_location = @grid_points[@grid_max_x - 1][0]
  end

  def try_move_north

    puts "#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate}"

    if(@kangaroo_location.y_coordinate == 0)
      puts "Oops, hit the boundary: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    else
      @kangaroo_location = @grid_points[@kangaroo_location.x_coordinate][@kangaroo_location.y_coordinate - 1]
      puts "Hopped to: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    end

  end

  def try_move_south

    puts "#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate}"

    if(@kangaroo_location.y_coordinate == (@grid_max_y - 1))
      puts "Oops, hit the boundary: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    else
      @kangaroo_location = @grid_points[@kangaroo_location.x_coordinate][@kangaroo_location.y_coordinate + 1]
      puts "Hopped to: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    end

  end

  def try_move_east

    puts "#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate}"

    if(@kangaroo_location.x_coordinate == (@grid_max_x - 1))
      puts "Oops, hit the boundary: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    else
      @kangaroo_location = @grid_points[@kangaroo_location.x_coordinate + 1][@kangaroo_location.y_coordinate]
      puts "Hopped to: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    end

  end

  def try_move_west

    puts "#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate}"

    if(@kangaroo_location.x_coordinate == 0)
      puts "Oops, hit the boundary: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    else
      @kangaroo_location = @grid_points[@kangaroo_location.x_coordinate - 1][@kangaroo_location.y_coordinate]
      puts "Hopped to: (#{@kangaroo_location.x_coordinate}, #{@kangaroo_location.y_coordinate})"
    end

  end

end