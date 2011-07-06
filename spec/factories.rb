require "rubygems"
require "factory_girl"

ns = "OneUp::GooglePlus::Objects::"

FactoryGirl.define do
  factory :user, :class => "#{ns}User" do
    first_name "John"
    last_name  "Doe"
    scope
    thread
  end

  factory :scope, :class => "#{ns}Scope" do
    first_name "John"
    last_name  "Doe"
    thread
  end

  factory :thread, :class => "#{ns}Thread" do
    first_name "John"
    last_name  "Doe"
    scope
  end

  factory :post, :class => "#{ns}Post" do
    text "Something neat"
    association :viewer, :factory => :user
    association :source, :factory => :user
    scope
    thread
  end

end
