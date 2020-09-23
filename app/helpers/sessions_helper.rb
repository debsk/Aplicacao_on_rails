module SessionsHelper

    def sign_in(user)
        session[:user_id] = user.id
    end

    def sign_out
        session.delete(:user_id)
    end

    def current_user
        @current_user ||= User.find_by(is: session[:user_id]) #preciso rever 
    end

    def user_signed_in?
        !current_user.nil?
    end
end
