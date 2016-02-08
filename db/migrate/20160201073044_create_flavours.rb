class CreateFlavours < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.timestamps null: false
    end
  end
end
