class Donacion < ApplicationRecord
  belongs_to :user

  def self.futuras
    where("CAST(strftime('%m', created_at) as integer) >  #{Time.now.month}")
  end

  def self.de_este_mes
  	where("CAST(strftime('%m', created_at) as integer) =  #{Time.now.month}")
  end
end
