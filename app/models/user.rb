class User < ActiveRecord::Base
  attr_accessible :email, :name
#一人のユーザーは複数の投稿を保有する
	has_many :microposts
end
