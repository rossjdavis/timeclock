class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|

      t.references :site, index: true, foreign_key: true
      t.references :rate, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.date :date
      t.timestamps
    end
  end
end
