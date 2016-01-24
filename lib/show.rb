class Show

  attr_reader :description, :date, :location

  def initialize(description, date, location)
    @description = description
    @date = date
    @location = location
  end
end
