RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end

FactoryBot.define do
  factory :user do
    email "peter@example.com"
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end
end
