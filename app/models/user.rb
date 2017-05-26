class User < ApplicationRecord
  attr_reader :remember_token

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save :downcase_email

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

  validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}, allow_nil: true

  accepts_nested_attributes_for :profile

  private
  def downcase_email
    self.email = email.downcase
  end
end
