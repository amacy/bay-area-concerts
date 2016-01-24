require_relative "venue"

class NewParish < Venue

  def self.url
    "http://thenewparish.com/"
  end

  def self.name
    "New Parish"
  end

  private

  def get_show_data
    @doc.css("ul.showListing").css("li")
  end

  def get_description(show_data)
    get_element(show_data, "title")
  end

  def get_date(show_data)
    get_element(show_data, "dateFld")
  end

  def get_element(show_data, element)
    show_data.css("strong.#{element}").first.text.strip
  end
end
