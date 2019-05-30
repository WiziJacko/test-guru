class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  scope :easy, -> { select_by_level(0..1) }
  scope :medium, -> { select_by_level(2..4) }
  scope :hard, -> { select_by_level(5..Float::INFINITY) }

  scope :select_by_level, ->(level) { where(level: level) }

  scope :select_by_category_title, -> (category_title) {
    joins(:category)
      .where(categories: { title: category_title })
      .order(name: :desc)
    }

  def self.select_by_category_title(category_title)
    Test.select_by_category_title(category_title).pluck(:name)
  end

end
