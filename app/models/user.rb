class User<ActiveRecord::Base
  has_many :todos
  has_secure_password
    def to_pleasant_string
      "#{id}. name:#{name} email:#{email}"
    end
  end