# frozen_string_literal: true

class TwitterAccount < ApplicationRecord
  belongs_to :user

  validates :username, uniqueness: true
end
