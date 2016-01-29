class CreateArsenals < ActiveRecord::Migration
  def change
    create_table :arsenals do |t|

      t.timestamps null: false
    end
  end
end
