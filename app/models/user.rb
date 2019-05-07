class User < ApplicationRecord

  def tests_by_level(test_level)
    Test.joins('join assessments on assessments.test_id = tests.id')
        .where(tests: { level: test_level }, assessments: { user_id: id } )
  end

end
