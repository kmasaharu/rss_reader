# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    site_id 1
    title "MyString"
    url "MyString"
    view_count 1
  end
end
