class Song < ApplicationRecord
  belongs_to :user
  belongs_to :singer
  belongs_to :author

  has_many :song_categories, dependent: :destroy
  has_many :categories, through: :song_categories, dependent: :destroy
  has_many :lyrics, dependent: :destroy
  has_many :likings, as: :liked, dependent: :destroy
  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs
end
