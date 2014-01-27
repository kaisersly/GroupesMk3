require 'spec_helper'

describe Formation do
  it "has a valid factory" do
  	expect(build(:formation)).to be_valid
  end
  it "requires a name" do
    expect(build(:formation, name: nil)).to have(1).errors_on(:name)
  end
  it "requires a status" do
    expect(build(:formation, status: nil)).to have(1).errors_on(:status)
  end
  it "has a unique name" do
    create(:formation, name: "L1Droit")
    expect(build(:formation, name: "L1Droit")).to have(1).errors_on(:name)
  end
  it "only accepts opened/closed as status" do
  	expect(build(:formation, status: "tutu")).to have(1).errors_on(:status)
  end
  it "destroys its matieres when destroyed" do
    formation = create(:formation)
    formation.matieres << create(:matiere, formation: formation)
    formation.destroy
    expect(Matiere.count).to eq 0
  end
end
