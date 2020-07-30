class UserController < ApplicationController 

    get '/users/signup' do 
        erb :'users/signup'
    end

    post '/users/signup' do 

        if params[:username] == "" && params[:password] = ""
            redirect "/users/signup"
        else
            @user = User.create(
                username: params[:username], 
                email: params[:email], 
                password: params[:password])

            session[:user_id] = @user_id
            redirect "/users/#{@user.id}"
        end
    end

    get '/users/login' do 
        erb :'/users/login'
    end

    post '/users/login' do
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user_id
            redirect "/users/#{@user.id}"
        else
            redirect "/users/login"
        end
    end

    get '/users/:id' do
        @user = User.find(params[:id])
        erb :'/users/show'
    end


  

    
end