class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :max_injuries
      t.integer :max_skills

      t.timestamps null: false
    end
  end
end
