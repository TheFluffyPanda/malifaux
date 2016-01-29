class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|

      t.timestamps null: false
    end
  end
end
