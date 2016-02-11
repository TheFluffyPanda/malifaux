class AddDetailsToModels < ActiveRecord::Migration
  def change
    add_column :models, :name, :string
    add_column :models, :soulstones, :integer
	add_column :models, :rare, :integer
	add_column :models, :mercenary, :boolean
  end
end
