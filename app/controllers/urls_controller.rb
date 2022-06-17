class UrlsController < ApplicationController
  def create
    shortener = Shortener.new(url_params[:original_url])
    @url = shortener.create_short_url
  end

  def url_params
    params.require(:url).permit(:original_url)
  end
end
