require "pry"
require_relative "../lib/the_chapel"

RSpec.describe TheChapel do

  before(:each) { allow(TheChapel).to receive(:url) { "spec/fixtures/the_chapel.html" } }

  it "returns an array of shows" do
    shows = TheChapel.new.shows
    show = shows.first
    expect(shows.length).to eq 45
    expect(show.date.to_s).to eq "2016-01-24"
    expect(show.description.strip).to eq "Howe Gelb (of Giant Sand)"
    expect(show.location).to eq TheChapel.name
  end
end
