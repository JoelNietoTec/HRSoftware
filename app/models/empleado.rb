class Empleado < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/:style/default_avatar.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    # Validamos la longitud de algunos campos
    validates :codigo, length: { in: 6..10 , message: "debe tener entre 6 y 10 caracteres"}
    validates :nombres, length: { in: 3..60 , message: "debe tener entre 3 y 60 caracteres"}
    validates :apellidos, length: { in: 3..60 , message: "debe tener entre 3 y 60 caracteres"}

    # Validamos campos que deben ser únicos
    validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
    validates :codigo, uniqueness: {case_sensitive: false, message: "ya esta registrado"}

    # Validamos los campos indispensables para poder guardar el registro
    validates :codigo, presence: {message: "es requerido"}
    validates :nombres, presence: {message: "es requerido"}
    validates :apellidos, presence: {message: "es requerido"}
    validates :cedula, presence: {message: "es requerido"}

    #Validamos el formato del E-mail
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
end
