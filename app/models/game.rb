class Game < ActiveRecord::Base
  def json_positions
    JSON.parse(self.attributes["positions"] || [{"name" => "default", "val" => 1}])
  end

  def json_positions= json
    self.positions = json.to_json
  end

  def last_player
    self.json_positions
  end

  def nb_players
    self.json_positions.size
  end

  def player_name(offset=0)
    self.json_positions[(self.player + offset + self.nb_players) % self.nb_players]["name"]
  end
end
