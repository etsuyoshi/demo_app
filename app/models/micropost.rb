class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
	#投稿は必ず一人のユーザーに属する
	belongs_to :user
	#投稿文字数は140以下
  validates :content, :length => { :maximum => 140 }
end
