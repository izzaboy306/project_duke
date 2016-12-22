class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
    	t.integer :vendors_statuses_id
    	t.integer :vendors_types_id
    	t.string :company_name
    	t.string :address_line_one
    	t.string :address_line_two
    	t.string :city
    	t.string :zip_code
    	t.string :phone_number
    	t.string :email_address
    	t.text :vendor_notes
    	t.timestamps
    end
  end
end
