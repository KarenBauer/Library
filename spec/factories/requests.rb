FactoryGirl.define do
  factory :request do
    status 0
    from_date { Time.zone.today }
    to_date { 2.days.from_now.to_date }
    user
    book
  end
end
