class AreaProfesional < ActiveRecord::Base
  validates :nombre, uniqueness: true
end
