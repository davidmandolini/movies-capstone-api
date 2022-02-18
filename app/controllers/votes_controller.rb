class VotesController < ApplicationController
  def create
    vote = Vote.new(
      :user_id => current_user.id,
      :nomination_id => params[:nomination_id],
    )
    vote.save
    render json: vote
  end

  def update
    vote = Vote.find_by(:id => params[:id])
    vote.nomination_id = params[:nomination_id]
    vote.save
    render json: vote
  end
end
