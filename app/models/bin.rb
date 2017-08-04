class Bin < ApplicationRecord
  def self.search(search)
    where('bin LIKE ? OR country LIKE ? OR brand LIKE ?',
          "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
