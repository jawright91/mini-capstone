class RemoveIntegerFromCartedItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :carted_products, :integer, :string
  end
end
