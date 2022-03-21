class UserRatingsController < ApplicationController
  def create
    rating = UserRating.new(
      :user_id => current_user.id,
      :nomination_id => params[:nomination_id],
      :value => params[:value],
    )
    rating.save
    render json: rating
  end
end
