class SearchesController < ApplicationController
  def index
    response = HTTP.get("https://imdb-api.com/API/SearchMovie/#{Rails.application.credentials.imdb_api_key}/#{params["expression"]}")
    searches = JSON.parse(response.body)
    render json: searches
  end
end
