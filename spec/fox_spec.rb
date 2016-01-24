require "pry"
require_relative "../lib/fox"
RSpec.describe Fox do

  before(:each) { stub_const("Fox::URL", "spec/fixtures/fox.html") }

  it "returns an array of shows" do
    shows = Fox.new.shows
    show = shows.first
    expect(shows.length).to eq 35
    expect(show.date).to eq "Saturday,January 23"
    expect(show.description).to eq "Two Nights!The Devil Makes Three"
    expect(show.location).to eq Fox.name
  end
end
