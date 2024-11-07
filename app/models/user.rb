class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pilot_license_number, uniqueness: true, allow_nil: true
  validates :role, inclusion: { in: %w(admin pilot dispatcher) }

  def full_name
    "#{first_name} #{last_name}"
  end
end