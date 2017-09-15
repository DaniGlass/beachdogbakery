class CreateRequestsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cakerequests do |t|
      t.string :title
      t.string :body
      t.datetime :delivery_date
      t.integer :user_id
      t.string :choosen_img_url

      t.timestamps
    end
  end
end
