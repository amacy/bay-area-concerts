require_relative "show"
require "nokogiri"
require "open-uri"

class Venue
  def initialize
    @doc = Nokogiri::HTML(open(self.class.url))
  end

  def shows
    @shows ||= get_show_data.map do |show_data|
      Show.new(get_description(show_data), get_date(show_data), self.class.name)
    end
  end
end
