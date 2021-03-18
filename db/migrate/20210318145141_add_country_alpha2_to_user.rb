class AddCountryAlpha2ToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :country_alpha2, :string
  end
end
