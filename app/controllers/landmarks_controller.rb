class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end

  get '/landmarks/new' do
    # more here ??
      # @owners = Owner.all

      erb :'/landmarks/new'
    end

    post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(params[:landmark])

    # if !params["owner"]["name"].empty?
    #   @owner = Owner.create(name: params["owner"]["name"])
    #
    #   # something about the has-many association im sure
    #   @owner.pets << @pet
    #
    #   # could clear the array then cycle through the params
    #   @owner.save
    # end
    # @pet.save

    # redirect to "pets/#{@pet.id}"
  end

  get '/landmarks/:id/edit' do
    # @owner = Owner.find(params[:id])
    @landmark = Landmark.find(params[:id])

    erb :'/landmarks/edit'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'/landmarks/show'
  end


end
