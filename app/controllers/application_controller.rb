class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include SessionsHelper

    private
        def require_logged_in_user
            flash[:danger] = "area restrita" 
            redirect_to entrar_path
        end
end
