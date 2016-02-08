class AddContentToFlavours < ActiveRecord::Migration
  def change
    add_column :flavours, :content, :text
    add_column :flavours, :active, :boolean
  end
end
