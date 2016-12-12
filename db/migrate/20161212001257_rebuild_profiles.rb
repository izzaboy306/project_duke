class RebuildProfiles < ActiveRecord::Migration[5.0]
	drop_table :profiles
  def change
  	create_table :profiles do |t|
    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
    	t.string :phone_number
    	t.string :contact_email
    	t.timestamps
    end
  end
end
