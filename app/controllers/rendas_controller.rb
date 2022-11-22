class RendasController < ApplicationController
    
    before_action :authorize

    def new
        @renda = Renda.new
    end

    def destroy
        @renda = Renda.find(params[:id])
        @renda.destroy
      
        redirect_to dashboards_path
    end

    def create
        @renda = Renda.new(renda_params) 
        @renda.user_id = current_usuario.id
        if @renda.save
            redirect_to dashboards_path
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
