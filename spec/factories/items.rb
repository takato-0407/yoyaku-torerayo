FactoryBot.define do
  factory :item do
    name                   {'aaa'}
    price                  {'1111'}
    info                   {'aaaa'}
    ttime_id                 {2}
    man_kaz_id               {2}
    tempo_to_id              {2}
    tempo_id                 {2}
    eki_id                   {2}
    user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end


