class AddRareToUpgrades < ActiveRecord::Migration
  def change
    add_column :upgrades, :rare, :integer
  end
end
