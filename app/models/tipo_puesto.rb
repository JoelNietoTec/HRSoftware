class TipoPuesto < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
