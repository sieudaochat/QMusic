class Liking < ApplicationRecord
  belongs_to :user
  belongs_to :liked, polymorphic: true
end
