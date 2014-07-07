class Licencia < ActiveRecord::Base
  validates :tipo, uniqueness: true
  validates :vehiculo, uniqueness: true
end
