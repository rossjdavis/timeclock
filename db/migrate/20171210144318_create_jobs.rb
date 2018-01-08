class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :code, limit: 4
      t.string :name, null: false
    end
  end
end
