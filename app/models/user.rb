class User < ApplicationRecord
  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users
  has_many :created_tests, class_name: "Test", foreign_key: "author_id", dependent: :nullify

  validates :name, :surname, :email, presence: true
  validates :email, uniqueness: true

  def tests_by_level(test_level)
    tests.select_by_level(test_level)
  end

end
