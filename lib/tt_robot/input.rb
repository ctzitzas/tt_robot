require "optparse"
require_relative "controller"
require_relative "../modules/tt_robot"

class Input
  def initialize
    @controller = Controller.new
    @place = {}
  end

  def run
    # Comment out the contents of this function to run rspec tests
    # parse_options()
    # if TT_Robot::Options[:stdin]
    #   ARGF.each_line do |line|
    #     command_hash = parse_command(line)
    #     @controller.run(command_hash) unless command_hash == nil
    #   end
    # end
  end

  private

  def parse_options
    parser = OptionParser.new do |opts|
      opts.banner = "./tt_robot uses STDIN and STDOUT by default"
      opts.on("-f", "--file file", "Use to output to the named file. File saved in output directory.") do |file|
        TT_Robot::Options[:file] = file
        TT_Robot::Options[:stdout] = false
      end
      opts.on("-h", "--help", "Displays Help") do
        puts opts
        exit
      end
    end
    parser.parse!
  end

  def valid_direction(string)
    %w[NORTH SOUTH EAST WEST].include?(string)
  end

  def valid_coordinate(string)
    regex = /\D/
    regex !~ string
  end

  def parse_command(string)
    build_hash(string.split(/[,\s\n]+/))
  end

  def build_hash(command_array)
    if string.slice(0..4) == "PLACE"
      build_place_hash(command_array) if valid_place_command(command_array)
    else
      build_command_hash(command_array[0])
    end
  end

  def build_place_hash(command_array)
    {
      command: command_array[0],
      position: {
        x: command_array[1].to_i,
        y: command_array[2].to_i
      },
      direction: command_array[3]
    }
  end

  def build_command_hash(string)
    { command: string } unless string.nil?
  end

  def valid_place_command(command_array)
    command_array[0] == "PLACE" &&
      valid_coordinate(command_array[1]) &&
      valid_coordinate(command_array[2]) &&
      valid_direction(command_array[3])
  end
end
