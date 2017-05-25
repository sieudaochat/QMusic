class Profile < ApplicationRecord
  belongs_to :polymorphic, polymorphic: true
end
