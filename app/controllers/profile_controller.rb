class ProfileController < ApplicationController
  def show
    profile = RestClient.get("https://torre.bio/api/bios/#{params[:username]}")
    parsed = JSON.parse profile

    pr = Hash.new

    pr[:name] = parsed["person"]["name"]
    pr[:picture] = parsed["person"]["picture"]
    pr[:professionalHeadline] = parsed["person"]["professionalHeadline"]
    pr[:location] = parsed["person"]["location"]
    pr[:summaryOfBio] = parsed["person"]["summaryOfBio"]
    pr[:remoter] = parsed["person"]["flags"]["remoter"]
    pr[:strengths] = parsed["strengths"]
    pr[:languages] = parsed["languages"]
    pr[:interests] = parsed["interests"]
    pr[:education] = parsed["education"]
    pr[:experiences] = parsed["experiences"]

    render json: pr
  end
end
