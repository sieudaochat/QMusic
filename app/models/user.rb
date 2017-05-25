class User < ApplicationRecord
  has_one :profile, as: :polymorphic, dependent: :destroy
  has_many :lyrics, dependent: :destroy
  has_many :likings, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_many :songs, dependent: :destroy
  has_many :active_relationships, class_name: Following.name,
    foreign_key: "follower_id", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :followed
  has_many :passive_relationships, class_name: Following.name,
    foreign_key: "followed_id", dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :notifications, dependent: :destroy
end
