class OpportunityController < ApplicationController
  def show
    opportunity = RestClient.get("https://torre.co/api/opportunities/#{params[:id]}")
    parsed = JSON.parse(opportunity)
    js = Hash.new
    js[:objective] = parsed["objective"]
    js[:organizations] = parsed["organizations"]
    js[:place] = parsed["place"]
    js[:compensation] = parsed["compensation"]
    js[:languages] = parsed["languages"]
    js[:strengths] = parsed["strengths"]
    js[:details] = parsed["details"]
    js[:members] = parsed["members"]
    render json: js
  end
end
