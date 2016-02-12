class Faction < ActiveRecord::Base
has_and_belongs_to_many :models
has_and_belongs_to_many :upgrades
end
