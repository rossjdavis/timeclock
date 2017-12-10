class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
      t.string :job_code, limit: 4
      t.float :pay_rate, scale: 2

      t.references :site, index: true, foreign_key: true
    end
  end
end
