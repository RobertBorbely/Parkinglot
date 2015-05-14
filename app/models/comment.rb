class Comment < ActiveRecord::Base
  belongs_to :parkinghouse
  belongs_to :user

  def to_s
    "#{user_name}"
  end
end
