class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fst_name, null: false
      t.string :lst_name, null: false

      t.string :username, null: false
      t.string :job_code, null: false

      t.timestamps
    end
  end
end
