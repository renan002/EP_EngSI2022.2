FactoryBot.define do
    factory :usuario do
        nome { "Rhuan" }
        email { "rhuan@usp.br" }
        password { "rhuan123" }
        password_confirmation { "rhuan123" }
    end
end