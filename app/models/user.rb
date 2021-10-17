class User < ApplicationRecord
  validates :account, presence: true
  validates :account, uniqueness: true
  has_many :articles
  has_one :user_detail

  # 中間テーブルに向けて多
  has_many :user_communities
  # 中間テーブル経由でcommunityテーブルと多
  has_many :communities, through: :user_communities
end
