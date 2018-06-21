class Donacion < ApplicationRecord
  belongs_to :user

  def self.futuras
    where("strftime('%m', created_at) >  #{Time.now.month}")
  end
end
