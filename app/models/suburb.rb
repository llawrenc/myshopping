class Suburb < ActiveRecord::Base
  before_validation :find_state
  before_save :capitalize_locality
  has_many :stores

  validates :locality, presence: true
  validates :state, presence: true
  validates :post_code, presence: true
  validate  :post_code_is_real

  protected
  def capitalize_locality
    self.locality = self.locality.titlecase
  end

  def find_state
    self.state = case self.post_code
      when 800..999 then "NT"
      when 2000..2599 then "NSW"
      when 2600..2618 then "ACT"
      when 2619..2899 then "NSW"
      when 2900..2999 then "ACT"
      when 3000..3999 then "VIC"
      when 4000..4999 then "QLD"
      when 5000..5999 then "SA"
      when 6000..6999 then "WA"
      when 7000..7999 then "TAS"
    end
  end

  def post_code_is_real
		unless (800..999).include?(self.post_code) or (2000..7999).include?(self.post_code)
			errors.add(:post_code, "is invalid.")
		end
  end
end
