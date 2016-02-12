class AddDetailsToUpgrade < ActiveRecord::Migration
  def change
    add_column :upgrades, :name, :string
    add_column :upgrades, :soulstones, :integer
	add_column :upgrades, :campaign, :boolean
  end
end
