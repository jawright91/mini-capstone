class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory, :supplier, :images, :is_discounted?, :tax, :total
end
