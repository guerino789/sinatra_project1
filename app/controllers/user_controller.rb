class UserController < ApplicationController 

    get '/users/signup' do 
        erb :'users/signup'
    end

    post '/users/signup' do 
        @user = User.create(username: params[:username], email: params[:email], password_digest: params[:password_digest])
        redirect "/users/#{@user.id}"
    end

    get '/users/:id' do
        @user = User.find_by(params[:id])
        erb :'/users/show'
    end

  

    
end