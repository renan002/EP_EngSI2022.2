class UsuariosController < ApplicationController
  before_action :authorize, except: [:new, :create]

  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to dashboards_path, notice: "Usuário foi criado com sucesso!"
      sign_in(@usuario)
    else
      render action: :new
    end
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to usuario_url(@usuario), notice: "Usuário atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @usuario_params.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end

end
