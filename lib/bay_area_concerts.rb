require_relative "new_parish"
require_relative "fox"

class BayAreaConcerts

  def initialize(output=STDOUT)
    @output = output
  end

  def run
    shows = [NewParish, Fox].map { |venue| venue.new.shows }.flatten.map(&:print).sort
    shows.each { |show| @output.puts show }
  end
end
