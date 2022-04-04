# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      ## Database authenticatable
      t.string :phone,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at


      t.timestamps null: false
    end

    add_index :doctors, :phone,                unique: true
  end
end
