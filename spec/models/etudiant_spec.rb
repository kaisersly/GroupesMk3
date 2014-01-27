require 'spec_helper'

describe Etudiant do
  it "has a valid factory" do
  	expect(build(:etudiant)).to be_valid
  end
  it "requires a firstname" do
  	expect(build(:etudiant, firstname: nil)).to have(1).errors_on(:firstname)
  end
  it "requires a lastname" do
  	expect(build(:etudiant, lastname: nil)).to have(1).errors_on(:lastname)
  end
  it "has a unique code" do
  	create(:etudiant, code: "123456")
  	expect(build(:etudiant, code: "123456")).to have(1).errors_on(:code)
  end
  it "destroys its choices when destroyed"

end
