class AddDetailsToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :name, :string
    add_column :skills, :soulstones, :integer
    add_column :skills, :barter, :integer
    add_column :skills, :campaign_cost, :integer
  end
end
