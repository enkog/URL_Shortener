class Shortener
  attr_reader :url, :url_model

  def initialize(url, url_model = Url)
    @url = url
    @url_model = url_model
  end

  def create_short_url
    url_model.create(
      original_url: url,
      shortened_url: SecureRandom.hex.first(7)
    )
  end
end
