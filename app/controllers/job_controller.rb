class JobController < ApplicationController
  def show
    job = RestClient.get("https://torre.co/api/opportunities/#{params[:id]}")
    render json: job
  end
end
