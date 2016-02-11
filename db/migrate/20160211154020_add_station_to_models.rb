class AddStationToModels < ActiveRecord::Migration
  def change
    add_reference :models, :station, index: true, foreign_key: true
  end
end
