class AddRateToLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :rate, :float
  end
end
