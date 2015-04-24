class Post < ActiveRecord::Base
  belongs_to :user

  def user
    super || GuestUser.new
  end
end
