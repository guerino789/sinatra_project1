class UserController < ApplicationController 

    get '/users/signup' do 
        erb :'users/signup'
    end

    post '/users/signup' do 

        if params[:username] == "" && params[:password] = ""
            redirect "/users/signup"
        else
            user = User.create(
                username: params[:username], 
                email: params[:email], 
                password: params[:password])
                
            if user.save 

            session[:user_id] = user.id
            redirect "/users/#{user.id}"
            end
        end
    end

    get '/users/login' do 
        erb :'/users/login'
    end

    post '/users/login' do
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/users/#{user.id}"
        else
            redirect "/users/login"
        end
    end

    get '/users/:id' do
        @user = User.find_by_id(params[:id])
        erb :'/users/show'
    end

    get '/logout' do
        session.clear
        redirect '/users/login'
      end
      


  

    
end