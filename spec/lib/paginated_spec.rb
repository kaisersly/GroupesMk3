require 'spec_helper'

describe Paginated do
  it "returns a paginated result" do
    10.times do |i|
      create(:formation, name: "formation_#{i}")
    end
    expect(Formation.paginated(1, 2).count).to eq 2
  end
end
