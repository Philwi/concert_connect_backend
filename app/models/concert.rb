# frozen_string_literal: true

class Concert < ApplicationRecord
  has_one_attached :avatar
end
