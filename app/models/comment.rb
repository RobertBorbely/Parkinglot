class Comment < ActiveRecord::Base
  belongs_to :parkinghouse
  belongs_to :user
end
