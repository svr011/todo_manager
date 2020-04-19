class User<ActiveRecord::Base
  validates :email, presence: true
  validates :password, presence: true
  validates :first_name, presence: true
  
  has_many :todos
  has_secure_password
    def to_pleasant_string
      "#{id}. name:#{name} email:#{email}"
    end
  end