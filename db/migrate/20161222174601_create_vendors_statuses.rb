class CreateVendorsStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors_statuses do |t|
    	t.string :title
    	t.string :description
    	t.timestamps
    end
  end
end
