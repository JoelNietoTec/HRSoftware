class NivelEstudio < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
