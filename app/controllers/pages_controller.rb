class PagesController < ApplicationController
    def show
       pages=params[:form_id]
       byebug
       #render json: @pages.to_json(only: [:email, :psw])
       render json: {response => true, pages: pages}.to_json

    end
    def signup
    end
end