FactoryBot.define do
  factory :user do
    nickname              {'abe'}
    email                 {Faker::Internet.email}
    password              {'1234ya'}
    password_confirmation {'1234ya'}
    first_name            {'渡邉'}
    last_name             {'嵩人'}
    first_name_kana       {'ワタナベ'}
    last_name_kana        {'タカト'}
    birth_date            {'1990-04-07'}
  end
end