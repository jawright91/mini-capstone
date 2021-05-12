class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :description, :inventory, :supplier, :images, :is_discounted?, :tax, :total
end
