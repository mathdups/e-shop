class Product <ApplicationRecord
  has_many :cart_items

  validates :name, :description, :short_description, presence: true
  validates_numericality_of :stock, :price, greater_than_or_equal_to: 0

end
