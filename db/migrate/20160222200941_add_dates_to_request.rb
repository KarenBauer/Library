class AddDatesToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :from_date, :datetime
    add_column :requests, :to_date, :datetime
  end
end
