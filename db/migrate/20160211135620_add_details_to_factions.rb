class AddDetailsToFactions < ActiveRecord::Migration
  def change
    add_column :factions, :name, :string
  end
end
