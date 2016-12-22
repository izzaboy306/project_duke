class CreateVendorsTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors_types do |t|
    	t.string :title
    	t.string :description
    	t.timestamps
    end
  end
end
