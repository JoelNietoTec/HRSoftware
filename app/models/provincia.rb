class Provincia < ActiveRecord::Base
  validates :nombre, uniqueness: true
  has_many :distritos
end
