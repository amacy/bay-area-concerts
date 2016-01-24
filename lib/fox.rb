require_relative "venue"

class Fox < Venue

  def self.name
    "Fox"
  end

  def self.url
    "http://www.thefoxoakland.com/calendar.php"
  end

  private

  def get_show_data
    @doc.css("table.concert_calendar").css("tr")[2..-1]
  end

  def get_description(show_data)
    show_data.css("span.headliner").first.text.strip
  end

  def get_date(show_data)
    show_data.css("td").first.text.strip
  end
end
