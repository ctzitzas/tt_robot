require "yaml"
module TT_Robot
  config = YAML.load(File.open("config.yml").read)

  Move_values = {
    "NORTH" => { x: 0, y: 1 },
    "SOUTH" => { x: 0, y: -1 },
    "EAST" => { x: 1, y: 0 },
    "WEST" => { x: -1, y: 0 }
  }

  Options = { file: nil, stdin: true, stdout: true }

  Board_limit = { x: config["board_size"][0], y: config["board_size"][1] }
end
