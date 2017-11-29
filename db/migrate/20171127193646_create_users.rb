class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fst_name, null: false, default: ""
      t.string :lst_name, null: false, default: ""
      t.string :username, null: false

      t.boolean :clocked_in?

      t.timestamps
    end
  end
end
