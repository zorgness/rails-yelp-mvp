# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
