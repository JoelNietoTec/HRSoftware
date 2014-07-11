class NivelIdioma < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
