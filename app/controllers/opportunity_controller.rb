class OpportunityController < ApplicationController
  def show
    opportunity = RestClient.get("https://torre.co/api/opportunities/#{params[:id]}")
    parsed = JSON.parse(opportunity)
    js = Hash.new
    js[:objective] = parsed["objective"]
    js[:organizations] = parsed["organizations"]
    js[:remote] = parsed["place"]["remote"]
    js[:created] = parsed["created"]
    js[:location] = parsed["place"]["location"]
    js[:currency] = parsed["compensation"]["currency"]
    js[:minAmount] = parsed["compensation"]["minAmount"]
    js[:maxAmount] = parsed["compensation"]["maxAmount"]
    js[:periodicity] = parsed["compensation"]["periodicity"]
    js[:languages] = parsed["languages"]
    js[:strengths] = parsed["strengths"]
    js[:details] = parsed["details"]
    js[:members] = parsed["members"]
    render json: js
  end
end
