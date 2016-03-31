class AddDetailsToInjuries < ActiveRecord::Migration
  def change
    add_column :injuries, :name, :string
    add_column :injuries, :description, :text
  end
end
