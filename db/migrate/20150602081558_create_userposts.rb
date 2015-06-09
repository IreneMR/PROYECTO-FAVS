class CreateUserposts < ActiveRecord::Migration
  def change
    create_table :userposts do |t|
    	t.integer :chain_id
    	t.string :user
    	t.text :comment
    	t.string :city

      t.timestamps null: false
    end
  end
end
