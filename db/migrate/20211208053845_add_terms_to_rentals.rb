class AddTermsToRentals < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :term, :string
  end
end
