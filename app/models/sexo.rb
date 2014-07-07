class Sexo < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
