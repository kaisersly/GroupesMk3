# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :etudiant do
    code "10101010"
    firstname "Toto"
    lastname "L'asticot"
    email "toto@lasti.cot"
  end
end
