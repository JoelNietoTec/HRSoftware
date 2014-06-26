class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  validates :password, confirmation: true
  attr_accessor :password
end
