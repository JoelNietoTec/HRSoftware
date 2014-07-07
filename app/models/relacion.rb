class Relacion < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
