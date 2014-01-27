require 'spec_helper'

describe Matiere do
  it "has a valid factory" do
  	expect(build(:matiere)).to be_valid
  end
  it "requires a name" do
  	expect(build(:matiere, name: nil)).to have(1).errors_on(:name)
  end
  it "requires a code" do
  	expect(build(:matiere, code: nil)).to have(1).errors_on(:code)
  end
  it "requires a capacity" do
  	# 2 errors for not being a number and for being nil
  	expect(build(:matiere, capacity: nil)).to have(2).errors_on(:capacity)
  end
  it "requires a formation" do
  	expect(build(:matiere, formation_id: nil)).to have(1).errors_on(:formation_id)
  end
  it "only accepts opened/closed/nil as status" do
  	expect(build(:matiere, status: "tutu")).to have(1).errors_on(:status)
  end
  it "validates numericality of capacity" do
  	expect(build(:matiere, capacity: "trois")).to have(1).errors_on(:capacity)
  end
  it "has a unique name per formation" do
  	formation = create(:formation)
  	create(:matiere, name: "L1Droit", formation: formation)
  	expect(build(:matiere, name: "L1Droit", formation: formation)).to have(1).errors_on(:name)
  end
  it "destroys its groupes when destroyed" do
    matiere = create(:matiere)
    matiere.groupes << create(:groupe, matiere: matiere)
    matiere.destroy
    expect(Groupe.count).to eq 0
  end
  it "returns a paginated result"

end
