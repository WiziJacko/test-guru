class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validate_max_number, on: :create

  scope :correct, -> { where(correct: true) }

  private

  def validate_max_number
    if question.answers.count >= 4
      errors.add(:number, "There are can not be more then 4 answers")
    end
  end

end
