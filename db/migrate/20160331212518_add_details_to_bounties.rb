class AddDetailsToBounties < ActiveRecord::Migration
  def change
    add_column :bounties, :name, :string
    add_column :bounties, :description, :text
  end
end
