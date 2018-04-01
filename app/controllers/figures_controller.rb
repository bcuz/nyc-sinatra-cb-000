class FiguresController < ApplicationController
  get '/figures/new' do
    # @pets = Pet.all

    # p @pets.size
    # binding.pry


    erb :'/figures/new'
  end

end
