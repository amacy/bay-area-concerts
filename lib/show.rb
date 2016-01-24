class Show

  attr_reader :description, :date, :location

  def initialize(description, date, location)
    @description = sanitize_description(description)
    @date = Date.parse(sanitize_date(date))
    @location = location
  end

  def print
    "#{@date} | #{description} | #{location}"
  end

  private

  def sanitize_description(string)
    sanitize(string, ["Two Nights!"]).ljust(60)
  end

  def sanitize_date(string)
    sanitize(string, %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday ,])
  end

  def sanitize(string, deletions)
    deletions.each do |deletion|
      string = string.gsub(/#{deletion}/, "")
    end
    string
  end
end
