

require "faker"
require_relative "../models/user_model"


FactoryBot.define do
    factory :user, class: UserModel do
        full_name { "Gabriel Cleybson" }
        email { "cleybinho@eu.com" }
        password { "12345" }

        after(:build) do |user|
            # puts "apagando o email " + user.email
            Database.new.delete_user(user.email)
        end
    end

    factory :registered_user, class: UserModel do
        id { 0 }
        full_name { Faker::TvShows::SouthPark.character }
        email { Faker::Internet.free_email }
        password { "tony123" }

        after(:build) do |user|
            # puts "apagando o email " + user.email 
            Database.new.delete_user(user.email)
            result = ApiUser.save(user.to_hash)
            user.id = result.parsed_response["id"]
        end
    end

    factory :user_wrong_email, class: UserModel do
        full_name { "Gabriel Cleybson" }
        email { "cleybinho&eu.com" }
        password { "12345" }
    end

    factory :user_empty_name, class: UserModel do
        full_name { "" }
        email { "cleybinho&eu.com" }
        password { "12345" }
    end

     factory :user_empty_email, class: UserModel do
        full_name { "Gabriel Cleybson" }
        email { "" }
        password { "12345" }
    end

     factory :user_empty_password, class: UserModel do
        full_name { "Gabriel Cleybson" }
        email { "cleybinho@eu.com" }
        password { "" }
    end

     factory :user_null_name, class: UserModel do
        email { "cleybinho@eu.com" }
        password { "12345" }
     end

     factory :user_null_email, class: UserModel do
        full_name { "Gabriel Cleybson" }
        password { "12345" }
     end

     factory :user_null_password, class: UserModel do     
        full_name { "Gabriel Cleybson" }
        email { "cleybinho@eu.com" }
     end

end