# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :phone,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.boolean :admin, default: false

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at


      t.timestamps null: false
    end

    add_index :users, :phone,                unique: true
  end
end
