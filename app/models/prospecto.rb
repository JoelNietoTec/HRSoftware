class Prospecto < ActiveRecord::Base
  has_many :prospecto_telefonos
  has_many :prospecto_estudios
  has_many :prospecto_experiencias
  has_many :prospecto_cargos
  has_many :prospecto_idiomas
  accepts_nested_attributes_for :prospecto_estudios, allow_destroy: true
  accepts_nested_attributes_for :prospecto_experiencias, allow_destroy: true
  accepts_nested_attributes_for :prospecto_telefonos, allow_destroy: true
  accepts_nested_attributes_for :prospecto_cargos, allow_destroy: true
  accepts_nested_attributes_for :prospecto_idiomas, allow_destroy: true
end
