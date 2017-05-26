class Profile < ApplicationRecord
  belongs_to :polymorphic, polymorphic: true, optional: true

  validates :name, presence: true
  validates :date_of_birth, presence: true
  validates :gender, inclusion: {in: [true, false],
    message: ": please choose gender"}
end
