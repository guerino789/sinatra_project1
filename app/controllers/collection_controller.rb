class CollectionController < ApplicationController
   
    get '/collections/new' do
        erb :'/collection/new'
    end

    post '/collections' do 
        @collection = Collection.create(
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
        @collections = Collection.all 
       erb :'/collection/index'
    end 

    get '/collections/:id/edit' do
        @collection = Collection.find(params[:id])
        erb :'/collection/edit'
    end

    post '/collections/:id' do
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