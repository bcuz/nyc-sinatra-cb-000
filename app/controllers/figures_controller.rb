class FiguresController < ApplicationController
  get '/figures/new' do
    # @pets = Pet.all

    # p @pets.size
    # binding.pry

    @titles = Title.all
    @landmarks = Landmark.all



    erb :'/figures/new'
  end

end
