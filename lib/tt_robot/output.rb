class Output
  def initialize; end

  def receiver(hash)
    if TT_Robot::Options[:stdout]
      response = parse_stdout(hash)
      puts response
    elsif !TT_Robot::Options[:file].nil?
      file = File.open("./output/#{TT_Robot::Options[:file]}", "a")
      file << parse_file(hash)
    end
  end

  private

  def parse_stdout(hash)
    "#{hash[:position][:x]},#{hash[:position][:y]},#{hash[:direction]}"
  end

  def parse_file(hash)
    "#{hash[:position][:x]},#{hash[:position][:y]},#{hash[:direction]}\n"
  end
end
