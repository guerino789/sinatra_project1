class CollectionController < ApplicationController
   
    get '/collections/new' do
        erb :'/collection/new'
    end

    post '/collections' do 
    
        @collection = Collection.create(
         
            user_id: current_user.id,
            brand: params[:brand], 
            style: params[:style], 
            color: params[:color], 
            size: params[:size], 
            price: params[:price]
            )
            
        redirect "/collections/#{@collection.id}"        
    end

    get '/collections/:id' do 
        @collection = Collection.find(params[:id])
        erb :'/collection/show'
    end

    get '/collections' do 
       
        @collections = current_user.collections
         erb :'/collection/index' 
    end 

    get '/collections/:id/edit' do
        @collection = Collection.find(params[:id])
        erb :'/collection/edit'
    end

    patch '/collections/:id' do
        @collection = Collection.find(params[:id])
        @collection.update(
            brand: params[:brand], 
            style: params[:style], 
            color: params[:color], 
            size: params[:size], 
            price: params[:price]
            )
        redirect "/collections/#{@collection.id}"    
    end

    delete '/collections/:id' do 
        @collection = Collection.find(params[:id])
        @collection.destroy 
        redirect '/collections'        
    end





end