class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|

      t.timestamps null: false
    end
  end
end
