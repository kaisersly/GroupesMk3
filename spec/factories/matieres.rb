# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :matiere do
    name "Droit pénal"
    code "d1dpn"
    status "opened"
    capacity 10
    association :formation
  end
end
