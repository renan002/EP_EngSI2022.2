class DashboardsController < ApplicationController

    before_action :authorize

    def show
        @rendas = Renda.where(user_id: current_usuario.id)
        @dividas = Divida.where(user_id: current_usuario.id)
        @objetivos = Objetivo.where(user_id: current_usuario.id)
        @recursos = Recurso.where(user_id: current_usuario.id)
    end

end