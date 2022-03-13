class SearchesController < ApplicationController
  def index
    response = HTTP.get("https://imdb-api.com/API/SearchMovie/#{Rails.application.credentials.imdb_api_key}/lord%20of%20the%20rings")
    searches = JSON.parse(response.body)
    render json: searches.as_json
  end
end
