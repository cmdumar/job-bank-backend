class ProfileController < ApplicationController
  def show
    profile = RestClient.get("https://torre.bio/api/bios/#{params[:username]}")
    render json: person
  end
end
