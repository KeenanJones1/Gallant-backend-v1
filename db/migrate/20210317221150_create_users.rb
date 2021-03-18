class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_in
      t.string :last_name 
      t.string :street_address
      t.string :second_street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :country
      t.date :birth_date
      t.string :phone_number
      t.string :email_address
      t.string :gender
      t.string :emergency_contact_name 
      t.string :emergency_contact_phone
      t.string :emergency_contact_relation
      t.boolean :member
      t.date :member_since
      t.date :memebership_ended
      t.timestamps
    end
  end
end
