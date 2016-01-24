require_relative "new_parish"
require_relative "fox"
require_relative "rickshaw_stop"
require_relative "the_chapel"

class BayAreaConcerts

  def initialize(output=STDOUT)
    @output = output
  end

  def run
    shows = [NewParish, Fox, RickshawStop, TheChapel].map { |venue| venue.new.shows }.flatten.map(&:print).sort
    shows.each { |show| @output.puts show }
  end
end
