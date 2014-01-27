require 'spec_helper'

describe Choice do
  it "has a valid factory" do
  	expect(build(:choice)).to be_valid
  end
  it "has a unique combination of Etudiant and Matiere" do
  	create(:choice)
  	expect(build(:choice)).to have(1).errors_on(:matiere_id)
  end
end
