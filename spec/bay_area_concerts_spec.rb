require "pry"
require "stringio"
require_relative "../lib/bay_area_concerts"

RSpec.describe BayAreaConcerts do

  let(:result) { String.new }
  let(:output) { StringIO.new(result) }

  it "prints an ordered list of concerts" do
    BayAreaConcerts.new(output).run
    expect(result[0..21]).to eq "2016-01-23 | The Devil"
    expect(result[-36..-1]).to eq "nals                          | Fox\n"
  end
end
