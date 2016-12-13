class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
    	t.integer :customers_statuses_id
    	t.string :company_name
    	t.text :customer_notes
    	t.string :address_line_one
    	t.string :address_line_two
    	t.string :city
    	t.string :zip_code
    	t.string :phone_number
      t.string :email_address
      t.timestamps
    end
  end
end
