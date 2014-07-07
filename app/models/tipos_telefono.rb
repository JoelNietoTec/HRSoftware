class TiposTelefono < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
