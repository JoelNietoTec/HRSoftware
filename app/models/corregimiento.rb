class Corregimiento < ActiveRecord::Base
  belongs_to :distrito
  validates :nombre, uniqueness: { scope: :distrito_id }
end
