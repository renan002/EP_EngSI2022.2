class RendasController < ApplicationController
    def new
        @renda = Renda.new
    end
    def create
        @renda = Renda.new(renda_params) 
        if @renda.save
            redirect_to "/usuarios/1"
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end            
    end
    def show
        @renda = Renda.find(params[:id])
    end
    private
    def renda_params
        params.require(:renda).permit(:profissao, :empresa, :salario)
    end
end
