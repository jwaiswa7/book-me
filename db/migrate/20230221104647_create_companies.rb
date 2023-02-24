class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :access_key

      t.timestamps
    end
    add_index :companies, %i[name access_key], unique: true
  end
end
