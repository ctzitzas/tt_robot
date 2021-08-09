require_relative "position"
class Place < Position
  def run(hash)
    @robot.place(hash) if destination_exists(hash[:position])
  end
end
