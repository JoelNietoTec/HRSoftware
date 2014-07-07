class GrupoPago < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
