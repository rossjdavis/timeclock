class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :code
      t.string :name
      t.float :rate

      t.references :site, index: true, foreign_key: true
    end
  end
end
