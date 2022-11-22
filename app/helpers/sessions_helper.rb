module SessionsHelper

    def sign_in(usuario)
        session[:usuario_id] = @usuario.id
    end

    def current_usuario
        @current_usuario ||= Usuario.find_by(id: session[:usuario_id])
    end

    def block_access
        if current_usuario.present?
            redirect_to dashboards_path
        end
    end

    def logged_in?
        !current_usuario.nil?
    end

    def sign_out
        session.delete(:usuario_id)
        @current_usuario = nil
    end

end
