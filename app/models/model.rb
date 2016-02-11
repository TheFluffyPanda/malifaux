class Model < ActiveRecord::Base
belongs_to :station
has_and_belongs_to_many :factions
end
