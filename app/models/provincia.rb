class Provincia < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
