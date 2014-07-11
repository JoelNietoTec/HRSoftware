class Idioma < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
