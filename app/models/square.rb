class Square < ActiveRecord::Base

  default_scope -> {order(:position)}

  def self.max_position
    Square.order(:position).reverse.first.position
  end
end
