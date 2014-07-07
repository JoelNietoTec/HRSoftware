class TipoSalario < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
