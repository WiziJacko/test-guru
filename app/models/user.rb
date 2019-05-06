class User < ApplicationRecord

  def tests_by_level(test_level)
    Test.joins('join results on results.test_id = tests.id')
        .where(tests: { level: test_level }, results: { user_id: id } )
  end

end
