class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  create_table :users do |t|
    t.string :name
    t.string :password
    t.integer :nausea
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.boolean :admin, default: false 

    t.timestamps null: false
  end
end
