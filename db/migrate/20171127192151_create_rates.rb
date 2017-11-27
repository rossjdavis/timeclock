class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.string :job, null: false
      t.float :pay, null: false, default: 0.00

      t.references :site, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
