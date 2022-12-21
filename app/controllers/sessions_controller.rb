require 'new_relic/agent/method_tracer'
class SessionsController < ApplicationController
  
  before_action :block_access, except: [:destroy]

  def create
    @usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if @usuario && @usuario.authenticate(params[:session][:password])
      sign_in(@usuario)
      redirect_to dashboards_path
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to(root_url)
  end

  add_method_tracer :destroy
  add_method_tracer :create
  
end
