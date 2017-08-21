FactoryGirl.define do
  factory :user do
      sequence :email do |n|
          "dummmyEmail#{n}@gmail.com"
      end
      password "securePassword"
      password_confirmation "securePassword"
    end
  end
  
  #store user in db with 'FactoryGirl.create(:user)' command