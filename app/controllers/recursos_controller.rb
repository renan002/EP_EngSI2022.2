class RecursosController < ApplicationController
    before_action :authorize
    def new
        @recurso = Recurso.new
    end

    def destroy
        @recurso = Recurso.find(params[:id])
        @recurso.destroy
      
        redirect_to dashboards_path
    end

    def create
        @recurso = Recurso.new(recurso_params)
        @recurso.user_id = current_usuario.id
        if @recurso.save
            redirect_to dashboards_path
        else
            render :new, status: :unprocessable_entity, content_type: "text/html"
            headers["Content-Type"] = "text/html"
        end
    end
    def show
        @recurso = Recurso.find(params[:id])
    end

    def edit
        @recurso = Recurso.find(params[:id])
    end

    def update
        @recurso = Recurso.find(params[:id])
        if @recurso.update(recurso_params)
            flash[:success] = "Recurso atualizado"
            redirect_to dashboards_path
        else
            render 'edit'
        end
    end

    private
    def recurso_params
        params.require(:recurso).permit(:nome, :valor)
    end
end
