class Request < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :user_id, :delivery_date, {presence: :true}

end
