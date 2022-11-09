class ObjetivoController < ApplicationController
    def new
        @objetivo = Objetivo.new
    end
    def create
        @objetivo = Objetivo.new(objetivo_params)
        if @objetivo.save
            redirect_to @objetivo
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
