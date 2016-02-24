class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def change
    change_column :requests, :from_date, :date
    change_column :requests, :to_date, :date
  end
end
