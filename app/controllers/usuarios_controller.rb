class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end
  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
                redirect_to @usuario, notice: "Usuário foi criado com sucesso!"
                #tire o método de comentário quando criar o helper.
                #Usuário depois de cadastrar-se acessa o sistema automaticamente
  #sign_in(@usuario)
    else
  render action: :new
    end
  end
  private
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end
end
