class DividasController < ApplicationController
    before_action :authorize
    def new
        @divida = Divida.new
    end
    def create
        @divida = Divida.new(divida_params)
        @divida.user_id = current_usuario.id
        if @divida.save
            redirect_to dashboards_path
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end
    def show
        @divida = Divida.find(params[:id])
    end
    private
    def divida_params
        params.require(:divida).permit(:nome, :descricao, :periodo, :valor)
    end
end
