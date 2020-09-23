class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = 'Usuário cadastrado com sucesso' # flash eh un rash q o rails disponibiliza pra mandar msg pro usuario 
            redirect_to root_url
        else
            render 'new'
        end
    end

    private # vai nos livras de qualquer injecao de paramtros indesejados

        def user_params
            params.require[:user].permite(:email, :name, :password, :password_confirmation)
        end
end
