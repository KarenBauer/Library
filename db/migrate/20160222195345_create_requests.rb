class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :status

      t.timestamps null: false
    end
  end
end
