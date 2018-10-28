class Dice

  def initialize
    @north_throws = 0
    @south_throws = 0
    @east_throws = 0
    @west_throws = 0
  end

  def roll
    number = rand 4
    if(number==0)
      @north_throws = @north_throws + 1
      return :north
    elsif (number==1)
      @south_throws = @south_throws + 1
      return :south
    elsif(number==2)
      @east_throws = @east_throws + 1
      return :east
    else(number==3)
      @west_throws = @west_throws + 1
      return :west
    end
  end

  def print_statistics

    total_throws = @north_throws + @south_throws + @east_throws + @west_throws

    north_precent = (@north_throws.to_f / total_throws) * 100
    south_precent = (@south_throws.to_f / total_throws) * 100
    east_precent = (@east_throws.to_f / total_throws) * 100
    west_precent = (@west_throws.to_f / total_throws) * 100

    puts 'Die statistics:'
    puts "Total throws:: #{total_throws}"
    puts "North: #{north_precent.round(2)}% South: #{south_precent.round(2)}% East: #{east_precent.round(2)}% West: #{west_precent.round(2)}%"
  end

end