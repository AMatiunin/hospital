class CreateAdvices < ActiveRecord::Migration[7.0]
  def change
    create_table :advices do |t|
      t.references :doctor, null: false, foreign_key: true
      t.text :body
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
