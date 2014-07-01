class Empleado < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/:style/default_avatar.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

    # Validamos que el código de empelado cuente entre 6 a 10 caracteres
    validates :codigo, length: { in: 6..10 , message: "debe tener entre 6 y 10 caracteres"}

    # Validamos los campos indispensables para poder guardar el registro
    validates :codigo, presence: {message: "es requerido"}
    validates :nombres, presence: {message: "es requerido"}
    validates :apellidos, presence: {message: "es requerido"}
    validates :cedula, presence: {message: "es requerido"}

    #Validamos el formato del E-mail
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
end
