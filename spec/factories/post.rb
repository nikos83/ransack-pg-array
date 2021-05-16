FactoryBot.define do
  factory :post do
    title { Faker::Movie.title }
    description { '<h1>' + title.to_s + '</h1>' + Faker::Lorem.paragraphs(number: 4).map { |pr| "<p>#{pr}</p>" }.join }
    category { [1,2,3,4,5].sample(1 + rand([1,2,3,4,5].count)) }
  end
end
