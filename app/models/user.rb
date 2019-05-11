class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :tests_author, class_name: "Test", foreign_key: "author_id"

  def tests_by_level(test_level)
    Test.joins('join tests_users on tests_users.test_id = tests.id')
        .where(tests: { level: test_level }, tests_users: { user_id: id } )
  end

end
