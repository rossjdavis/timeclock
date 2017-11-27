class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
