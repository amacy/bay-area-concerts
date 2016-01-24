require "pry"
require_relative "../lib/new_parish"
RSpec.describe NewParish do

  before(:each) { allow(NewParish).to receive(:url) { "spec/fixtures/new_parish.html" } }

  it "returns an array of shows" do
    shows = NewParish.new.shows
    show = shows.first
    expect(shows.length).to eq 31
    expect(show.date.to_s).to eq "2016-01-23"
    expect(show.description.strip).to eq "thePeople Oakland"
    expect(show.location).to eq NewParish.name
  end
end
