class Site < ActiveRecord::Base
  has_many :entrys
  belongs_to :app
end
