class CreateGrams < ActiveRecord::Migration[5.0]
  #this fie translates the code from the server into sql code for the database
  def change
    create_table :grams do |t|
      t.text :message
      t.timestamps
    end
  end
end
