class NominationsController < ApplicationController
  def index
    nominations = Nomination.all
    render json: nominations
  end

  def create
    response = HTTP.get("http://www.omdbapi.com/?apikey=#{Rails.application.credentials.omdb_api_key}&t=#{params[:name]}")
    movie = JSON.parse(response.body)
    nomination = Nomination.new(
      :user_id => current_user.id,
      :name => params[:name],
      :year => movie["Year"],
      :rating => movie["Rated"],
      :runtime => movie["Runtime"],
      :genre => movie["Genre"],
      :director => movie["Director"],
      :plot => movie["Plot"],
      :imdb_rating => movie["imdbRating"],
      :metacritic_rating => movie["Metascore"],
      :event_id => params[:event_id],
      :poster => params[:image],
    )
    nomination.save
    render json: nomination
  end

  def show
    nomination = Nomination.find_by(:id => params[:id])
    render json: nomination
  end
end
