class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images

  def is_discounted?
    return price <= 10
  end

  def tax
    return price * 0.09
  end

  def total
    return price + self.tax
  end

  # def supplier
  #   Supplier.find_by(id: product_id)
  # end
end
