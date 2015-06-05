class CreateUserposts < ActiveRecord::Migration
  def change
    create_table :userposts do |t|
    	t.string :user_name
    	t.date :date_userpost
    	t.integer :chain_id
    	t.text :description_userpost

      t.timestamps null: false
    end
  end
end
