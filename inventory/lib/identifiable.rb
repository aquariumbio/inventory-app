module Identifiable
  require 'securerandom'

  def random_id
    SecureRandom.hex(3)
  end

  def new_random_id(existing_ids)
    rid = nil
    loop do
      rid = random_id
      return rid unless existing_ids.include?(rid)
    end
  end
end