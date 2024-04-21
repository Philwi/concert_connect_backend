# frozen_string_literal: true

class Concert < ApplicationRecord
  has_one_attached :avatar
  default_scope { order(date: :asc) }
end
