class UsuarioSesionController < ApplicationController

  before_action :set_user, only: [:create]
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if @usuario
      redirect_back_or_to root_url , :notice => "Logged in!"
    else
      redirect_to root_url, :alert => "Email o password incorrecto"
    end
  end
  def destroy
    logout
    redirect_to root_url, :notice => 'Sesion Terminada'
  end

  private
  def set_user
    @user = login(params[:usuario_sesion][:email], params[:usuario_sesion][:password])
  end

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
