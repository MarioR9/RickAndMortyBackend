class Rick < ApplicationRecord
    has_many :morties
    has_secure_password
end
