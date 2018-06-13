class BackedProject < ApplicationRecord

  before_create :confirmation_token

  belongs_to :user
  belongs_to :project
  validates :user, presence: true
  validates :project, presence: true

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end




  private

  def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s

    end
  end
end
