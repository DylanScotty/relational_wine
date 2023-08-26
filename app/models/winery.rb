class Winery < ApplicationRecord
 has_many :wines

  def self.order_by_creation
    order(created_at: :desc)
  end
end