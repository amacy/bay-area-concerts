require "pry"
require_relative "../lib/fox"
RSpec.describe Fox do

  before(:each) { allow(Fox).to receive(:url) { "spec/fixtures/fox.html" } }

  it "returns an array of shows" do
    shows = Fox.new.shows
    show = shows.first
    expect(shows.length).to eq 35
    expect(show.date.to_s).to eq "2016-01-23"
    expect(show.description.strip).to eq "The Devil Makes Three"
    expect(show.location).to eq Fox.name
  end
end
