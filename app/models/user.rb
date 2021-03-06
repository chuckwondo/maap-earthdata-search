class User < ActiveRecord::Base
  validates :echo_id, presence: true, uniqueness: true
  has_many :retrievals, -> { order('created_at desc') }

  store :site_preferences, coder: JSON
  store :contact_information, coder: JSON
end
