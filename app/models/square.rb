class Square < ActiveRecord::Base
  def self.max_position
    Square.order(:position).reverse.first.position
  end
end
