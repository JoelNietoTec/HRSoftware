class StatusEstudio < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
