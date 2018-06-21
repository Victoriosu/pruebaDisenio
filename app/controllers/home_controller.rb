class HomeController < ApplicationController
  def index

  	@donaciones_mensuales = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
  	@donaciones_proyectadas = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
  	@suma = 0
  	@usuario = nil
  	@aux = [["Usuario", "Donaciones en este mes"]]
  	par = []
  	User.all.each do |user|
  		if user.donacions.futuras.count > 0
  			par = [user.nombre_completo , user.donacions.futuras.sum(:monto)]
  			@aux << par
  		end
  	end
  end
end
