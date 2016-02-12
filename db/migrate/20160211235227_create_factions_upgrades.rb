class CreateFactionsUpgrades < ActiveRecord::Migration
  def change
    create_table :factions_upgrades do |t|
	  t.belongs_to :faction, index: true
      t.belongs_to :upgrade, index: true
    end
  end
end
