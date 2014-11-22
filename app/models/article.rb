class Article < ActiveRecord::Base
  has_many :comments
  validates :title, length: {minimum: 3, too_short: "must have at least %{count} words"}
  before_save :capitalize_body

  private

  def capitalize_body
    self.body = self.body.mb_chars.capitalize!.to_s
  end
end
