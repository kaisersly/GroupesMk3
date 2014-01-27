require 'spec_helper'

describe Groupe do
  it "has a valid factory" do
  	expect(build(:groupe)).to be_valid
  end
  it "requires a name" do
  	expect(build(:groupe, name: nil)).to have(1).errors_on(:name)
  end
  it "requires a matiere" do
  	expect(build(:groupe, matiere_id: nil)).to have(1).errors_on(:matiere_id)
  end
  it "only accepts opened/closed/nil as status" do
  	expect(build(:groupe, status: "tutu")).to have(1).errors_on(:status)
  end
  it "validates numericality of capacity" do
  	expect(build(:groupe, capacity: "trois")).to have(1).errors_on(:capacity)
  end
  it "has a unique name per matiere" do
  	matiere = create(:matiere)
  	create(:groupe, name: "groupe 1", matiere: matiere)
  	expect(build(:groupe, name: "groupe 1", matiere: matiere)).to have(1).errors_on(:name)
  end
  it "nullify its choices when destroyed"

end
