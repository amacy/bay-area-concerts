require "pry"
require_relative "../lib/rickshaw_stop"

RSpec.describe RickshawStop do

  before(:each) { allow(RickshawStop).to receive(:url) { "spec/fixtures/rickshaw_stop.html" } }

  it "returns an array of shows" do
    shows = RickshawStop.new.shows
    show = shows.first
    expect(shows.length).to eq 47
    expect(show.date.to_s).to eq "2016-01-25"
    expect(show.description.strip).to eq "PWR BTTM"
    expect(show.location).to eq RickshawStop.name
  end
end
