class User < ApplicationRecord
 validates :first_name, presence: true, length: {minimum: 1}, format: { :with => /\A[a-zA-Z]+\z/, message: "only allows letters" }
 validates :last_name, format: { :with => /\A[a-zA-Z]+\z/, message: "only allows letters"}
 validates_format_of :birth_date, :with => /\d{4}-\d{2}-\d{2}/
 validates :middle_in, format: {:with => /\a-zA-Z/, message: "Only a single letter"}
 validates :state, presence: true, length: {is: 2}
 validates_zipcode :zipcode, zipcode: { message: 'Should be in the form 12345 or 12345-1234'}
 validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Please follow 123-444-5678 format"}
 validates :email_address, format: {with: /(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})/i, message: "Please use the johndoe@email.com format"}
 # continue validating user attributes before connecting other models



end
