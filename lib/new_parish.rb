require_relative "show"
require "nokogiri"
require "open-uri"

class NewParish

  URL = "http://thenewparish.com/"

  def initialize
    @doc = Nokogiri::HTML(open(URL))
  end

  def self.name
    "New Parish"
  end

  def shows
    @shows ||= @doc.css("ul.showListing").css("li").map do |show_data|
      description = get_element(show_data, "title")
      date = get_element(show_data, "dateFld")
      location = self.class.name
      Show.new(description, date, location)
    end
  end

  private

  def get_element(show_data, element)
    show_data.css("strong.#{element}").first.text.strip
  end
end
