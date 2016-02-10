class AddOrderToFlavour < ActiveRecord::Migration
  def change
    add_column :flavours, :order, :integer
    add_column :flavours, :title, :string
  end
end
