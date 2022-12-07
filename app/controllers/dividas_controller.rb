class DividasController < ApplicationController
    before_action :authorize
    def new
        @divida = Divida.new
    end

    def destroy
        @divida = Divida.find(params[:id])
        @divida.destroy
      
        redirect_to dashboards_path
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

    def edit
        @divida = Divida.find(params[:id])
    end

    def update
        @divida = Divida.find(params[:id])
        if @divida.update(divida_params)
            flash[:success] = "Dívida atualizada"
            redirect_to dashboards_path
        else
            render 'edit'
        end
    end

    private
    def divida_params
        params.require(:divida).permit(:nome, :descricao, :periodo, :valor)
    end
end
