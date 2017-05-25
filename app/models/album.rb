class Album < ApplicationRecord
  belongs_to :user

  has_many :followings, as: :followed, dependent: :destroy
  has_many :album_songs, dependent: :destroy
  has_many :songs, through: :album_songs
  has_many :likings, as: :liked, dependent: :destroy
  has_many :notifications, dependent: :destroy
end
