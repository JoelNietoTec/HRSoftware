class Estatus < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
