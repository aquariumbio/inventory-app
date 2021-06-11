module Identifiable
  require 'securerandom'

  def random_id
    SecureRandom.hex(3)
  end

  def new_random_id(existing_ids)
    rid = nil
    i = 0
    loop do
      i += 1
      break if i > 10

      rid = random_id
      return rid unless existing_ids.include?(rid)
    end
  end
end