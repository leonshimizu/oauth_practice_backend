class PagesController < ApplicationController
  def index 
    response = HTTP.get("https://newsapi.org/v2/everything?q=Apple&from=2021-12-02&sortBy=popularity&apiKey=#{Rails.application.credentials.news_api_key}")
    news = response.parse(:json)
    render json: news.as_json
  end
end
