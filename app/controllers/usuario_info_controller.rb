class UsuarioInfoController < ApplicationController
    before_action :authorize

    def new
        @usuario_info = UsuarioInfo.new
    end

    def create
        @usuario_info = UsuarioInfo.new(usuario_info_params) 
        @usuario_info.user_id = current_usuario.id
        if @usuario_info.save
            redirect_to dashboards_path
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end            
    end

    def show
        @usuario_info = UsuarioInfo.find(params[:id])
    end

    def edit
        @usuario_info = UsuarioInfo.find(params[:id])
    end

    def update
        @usuario_info = UsuarioInfo.find(params[:id])
        if @usuario_info.update(usuario_info_params)
            flash[:success] = "Informações adicionais atualizada"
            redirect_to dashboards_path
        else
            render 'edit'
        end
    end

    public
    def usuario_info_params
        params.require(:usuario_info).permit(:foto, :idade, :genero, :telefone)
    end
end
