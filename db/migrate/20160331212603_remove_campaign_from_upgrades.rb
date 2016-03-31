class RemoveCampaignFromUpgrades < ActiveRecord::Migration
  def change
    remove_column :upgrades, :campaign, :boolean
  end
end
