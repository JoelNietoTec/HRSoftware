class ProspectoIdioma < ActiveRecord::Base
  belongs_to :prospecto
  validates :idioma_id, uniqueness: { scope: :prospecto_id,
    message: "ya existe este idioma" }
end
