class Game < ActiveRecord::Base
  before_create :create_position
  def create_position
    self.positions = Array.new(Integer(self.positions)) {1}
  end
end
