class Distrito < ActiveRecord::Base
  belongs_to :provincia
  validates :nombre, uniqueness: { scope: :provincia_id }
end
