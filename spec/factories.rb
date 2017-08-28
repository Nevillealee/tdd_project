FactoryGirl.define do
  factory :comment do
    
  end
  factory :user do
      sequence :email do |n|
          "dummyEmail#{n}@gmail.com"
      end
      password "securePassword"
      password_confirmation "securePassword"
    end
    
    factory :gram do
      message "hello"
      picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'issa.png'), 'image/png') }
      #automatically connect the user_id of the model to a user that FactoryGirl will automatically hook up.
      association :user
    end
  end
  
  #store user in db with 'FactoryGirl.create(:user)' command