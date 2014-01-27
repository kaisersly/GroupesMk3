# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :groupe do
    name "groupe 1"
    capacity 10
    schedule "10h-11h30"
    weekday "lundi"
    teacher "M. Guével"
    location "H 105"
    additional nil
    association :matiere
  end
end
