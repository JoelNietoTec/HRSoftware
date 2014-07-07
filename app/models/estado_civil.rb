class EstadoCivil < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
