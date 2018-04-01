class LandmarksController < ApplicationController
  get '/landmarks/new' do
      # @owners = Owner.all

      erb :'/landmarks/new'
    end
end
