class TipoEmpleado < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
