class CreateBounties < ActiveRecord::Migration
  def change
    create_table :bounties do |t|

      t.timestamps null: false
    end
  end
end
