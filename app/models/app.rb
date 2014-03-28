class App < ActiveRecord::Base
  has_many :sites
  has_many :palaces
end
