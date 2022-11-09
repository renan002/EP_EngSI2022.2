class UsuariosController < ApplicationController

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to @usuario, notice: "Usuário foi criado com sucesso!"
      sign_in(@usuario)
    else
      render action: :new
    end
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  private
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end

end
