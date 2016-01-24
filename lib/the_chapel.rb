require_relative "venue"

class TheChapel < Venue

  def self.url
    "http://www.thechapelsf.com/"
  end

  def self.name
    "The Chapel"
  end

  private

  def get_show_data
    @doc.css("div#tab1").css("div.list-view-details")
  end

  def get_description(show_data)
    get_element(show_data, "h1.headliners")
  end

  def get_date(show_data)
    get_element(show_data, "h2.dates")
  end

  def get_element(show_data, element)
    show_data.css(element).first.text.strip
  end
end
