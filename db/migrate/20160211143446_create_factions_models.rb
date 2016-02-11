class CreateFactionsModels < ActiveRecord::Migration
  def change
    create_table :factions_models, id: false do |t|
      t.belongs_to :faction, index: true
      t.belongs_to :model, index: true
    end
  end
end
