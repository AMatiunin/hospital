class AddProfessionIdToDoctor < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :profession, null: false, foreign_key: true
  end
end
