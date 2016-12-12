class UpdateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
    	t.integer :employee_type_id
    	t.string :phone_number
    	t.string :contact_email
    	t.timestamps
    end
  end
end
