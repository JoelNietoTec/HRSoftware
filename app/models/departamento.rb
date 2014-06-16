class Departamento < ActiveRecord::Base
  has_many :cargos
end
