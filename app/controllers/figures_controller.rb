class FiguresController < ApplicationController
  get '/figures/new' do

    @titles = Title.all
    @landmarks = Landmark.all

    erb :'/figures/new'
  end

  post '/figures' do

  @figure = Figure.create(params[:figure])
  #
  #
  # if !params["pet"]["name"].empty?
  #   @owner.pets << Pet.create(name: params["pet"]["name"])
  # end;
  # @owner.save
  # redirect "owners/#{@owner.id}"
  end
end
