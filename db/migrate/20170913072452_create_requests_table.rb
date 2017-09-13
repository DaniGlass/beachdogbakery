class CreateRequestsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :body
      t.datetime :delivery_date
      t.integer :user_id

      t.timestamps

    end
  end
end
