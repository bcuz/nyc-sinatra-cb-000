class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do

    @titles = Title.all
    @landmarks = Landmark.all

    erb :'/figures/new'
  end

  post '/figures' do

  @figure = Figure.create(params[:figure])
  #
  #
  if !params["title"]["name"].empty?
    @figure.titles << Title.create(name: params["title"]["name"])
  end
  if !params["landmark"]["name"].empty?
    @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
  end

  @title.save
  # redirect "owners/#{@owner.id}"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'/figures/edit'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  post '/figures/:id' do
  @figure = Figure.find(params[:id])

  @figure.update(params["figure"])
  if !params["landmark"]["name"].empty?
    @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
  end
  redirect to "figures/#{@figure.id}"
  end
end
