class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|

      t.string :clock_in
      t.string :clock_out

      t.references :site, index: true, foreign_key: true
      t.references :rate, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
