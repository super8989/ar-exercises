class Store < ActiveRecord::Base
  has_many :employees

  # Add validations
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Custom validation: Stores must carry at least one of the men's or women's apparel
  validate :gender_apparel

  private

  def gender_apparel
    if !mens_apparel && !womens_apparel
      errors.add :mens_apparel, "Must carry at least Men's apparel"
      errors.add :womens_apparel, "Must carry at least Women's apparel"
    end
  end

end
