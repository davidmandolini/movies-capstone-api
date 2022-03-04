class NominationsController < ApplicationController
  def index
    nominations = Nomination.all
    render json: nominations
  end

  def create
    nomination = Nomination.new(
      :user_id => current_user.id,
      :name => params[:name],
      :event_id => params[:event_id],
      :trailer_url => params[:trailer_url],
      :poster => params[:poster],
    )
    nomination.save
    render json: nomination
  end

  def show
    nomination = Nomination.find_by(:id => params[:id])
    render json: nomination
  end

  # def update
  #   nomination = Nomination.find_by(:id => params[:id])
  #   nomination.name = params[:name] || nomination.name
  #   nomination.trailer_url = params[:trailer_url] || nomination.trailer_url
  #   nomination.poster = params[:poster] || nomination.poster
  #   render json: nomination
  # end

  # def destroy
  #   nomination = Nomination.find_by(:id => params[:id])
  #   nomination.destroy
  #   render json: { :message => "Nomination destroyed" }
  # end
end
