class Person < ApplicationRecord
  self.inheritance_column = :type
  has_one :profile, as: :polymorphic, dependent: :destroy
end
