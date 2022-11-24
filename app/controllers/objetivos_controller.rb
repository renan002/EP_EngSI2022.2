class ObjetivosController < ApplicationController
    before_action :authorize
    def new
        @objetivo = Objetivo.new
    end

    def destroy
        @objetivo = Objetivo.find(params[:id])
        @objetivo.destroy
      
        redirect_to dashboards_path
    end

    def create
        @objetivo = Objetivo.new(objetivo_params)
        @objetivo.user_id = current_usuario.id
        if @objetivo.save
            redirect_to dashboards_path
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end
    def show
        @objetivo = Objetivo.find(params[:id])
    end
    private
    def objetivo_params
        params.require(:objetivo).permit(:titulo, :descricao)
    end
end
