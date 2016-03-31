class AddDetailsToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :name, :string
    add_column :equipment, :soulstones, :integer
    add_column :equipment, :barter, :integer
    add_column :equipment, :campaign_cost, :integer
  end
end
