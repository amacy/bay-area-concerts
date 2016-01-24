require "pry"
require "stringio"
require_relative "../lib/bay_area_concerts"

RSpec.describe BayAreaConcerts do

  let(:result) { String.new }
  let(:output) { StringIO.new(result) }

  before(:each) do
    allow(NewParish).to receive(:url) { "spec/fixtures/new_parish.html" }
    allow(Fox).to receive(:url) { "spec/fixtures/fox.html" }
    allow(RickshawStop).to receive(:url) { "spec/fixtures/rickshaw_stop.html" }
  end

  it "prints an ordered list of concerts" do
    BayAreaConcerts.new(output).run
    expect(result[0..21]).to eq "2016-01-23 | The Devil"
    expect(result[-36..-1]).to eq "nals                          | Fox\n"
  end
end
