class PagesController < ApplicationController
    def show
   		render template: "pages/#{params[:page]}"
	    @movies = Movie.all
	    @categories = Category.all
    end
  end 