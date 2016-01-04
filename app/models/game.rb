class Game < ActiveRecord::Base
  before_create :create_position
  def create_position
    self.positions = Array.new(Integer(self.positions)) do
      {"name" => "", "val" => 1}
    end
  end
  before_save :positions_to_json
  def positions_to_json
    self.positions = self.positions.to_json
  end

  def positions
    JSON.parse(self.attributes["positions"])
  end
end
