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

  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params["landmark"])

    # if !params["owner"]["name"].empty?
    #   owner = Owner.create(name: params["owner"]["name"])
    #   @pet.owner_id = owner.id
    # end

    # p param
    # p params["pet"]
    # how do i find the owner at this point, tho?
    # do i need the owner?
    # wouldnt clear the owner's pets array. prolly an easier way
    # where.. changing it from the pets side will handle everything.
    # @owner = Owner.find(params["owner"]["name"])
    # that easy?


    # @pet.owner_id = params["owner"]["name"]
    # @pet.save
    #

    redirect to "landmarks/#{@landmark.id}"
  end
end
