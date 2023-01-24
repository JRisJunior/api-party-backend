class EnvironmentsController < ApplicationController

  def index
    data = HTTP.get("https://data.cityofchicago.org/resource/a9u4-3dwb.json")
    data = data.parse
    render json: data.as_json
  end

end
