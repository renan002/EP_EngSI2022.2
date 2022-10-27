class DividasController < ApplicationController
    def new
        @divida = Divida.new
    end
    def create
        @divida = Divida.new(divida_params)
        if @divida.save
            redirect_to @divida
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
