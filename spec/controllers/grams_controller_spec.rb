require 'rails_helper'

#do and end can be used in place of curly brackets to denote blocks.
#any values can be placed in the strings following the 'describe' and 'it' keywords
#however these strings should be descriptive for other developers reading code

RSpec.describe GramsController, type: :controller do
    describe "grams#index action" do
        it "should successfully show the page" do
            get :index  #this line will trigger an HTTP GET request to the index action of our controller
            expect(response).to have_http_status(:success)
        end
    end
    
    describe "grams#new action" do
        it "should successfully show the new form" do
            get :new
            expect(response).to have_http_status(:success)
        end
    end
    
    describe "grams#create action" do
        it "should successfully create a new gram in our database" do
            post :create, params: { gram: { message: 'Hello!' } }
            expect(response).to redirect_to root_path
            
            gram = Gram.last
            expect(gram.message).to eq("Hello!")
        end
        
        it "should properly deal with validation errors" do
            post :create, params: { gram: { message: '' } }
            expect(response).to have_http_status(:unprocessable_entity)
            expect(Gram.count).to eq 0
        end
    end
    
    
end
