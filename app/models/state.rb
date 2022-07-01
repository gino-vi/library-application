class State < ActiveRecord::Base
  attr_accessible :name, :id
  has_many :cities
end
