class Sector < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
