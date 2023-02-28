class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :user_name
      t.string :email
      t.string :phone_number
      t.date :start_on
      t.date :end_on
      t.text :details
      t.references :service, null: false, foreign_key: true
      t.integer :adult_no
      t.integer :child_no
      t.boolean :confirmed
      

      t.timestamps
    end
  end
end
