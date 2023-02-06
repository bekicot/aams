FactoryBot.define do
  factory :locker_state do
    locker
    sha256_digest { Digest::SHA2.new(256).hexdigest 'SHA56DIGEST' }
  end
end
