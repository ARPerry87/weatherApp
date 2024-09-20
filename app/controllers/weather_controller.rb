class WeatherController < ApplicationController
  def index
    api_key = Rails.application.credentials[:open_weather_api]
    api = WeatherApi.new(api_key)
    @weather = api.weather_by_city("New York")
  end
end
