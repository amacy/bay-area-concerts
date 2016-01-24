require_relative "venue"

class RickshawStop < Venue

  def self.url
    "http://www.rickshawstop.com/calendar/"
  end

  def self.name
    "Rickshaw Stop"
  end

  private

  def show_data?(show_data)
    !show_data.css(description_element).first.nil?
  end

  def get_show_data
    @doc.css("tr").css("td")
  end

  def description_element
    "h1.headliners"
  end

  def get_description(show_data)
    get_element(show_data, description_element)
  end

  def get_date(show_data)
    get_element(show_data, "h5.date")
  end

  def get_element(show_data, element)
    show_data.css(element).first.text.strip
  end
end
