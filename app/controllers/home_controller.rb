class HomeController < ApplicationController
  def index
  	@donaciones_mensuales = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
  	@donaciones_proyectadas = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
    @total_donaciones = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"').sum(:monto)
    @total_mes = Donacion.de_este_mes.sum(:monto)
  	@suma = 0
  	@usuario = nil
  	@aux = [["Usuario", "Donaciones en este mes"]]
    @aux3 = []
    @aux2 = [["Usuario", "Usuarios registrados"]]
    @aux4 = []
  	par = []
    par2 = []
    par3 = []
    par4 = []
  	
    #grafico 1
    User.all.each do |user|
  		if user.donacions.de_este_mes.count > 0
  			par = [user.nombre_completo , user.donacions.de_este_mes.sum(:monto)]
  			@aux << par
  		end
    end
    #grafico 3
    User.all.each do |user|
        par = [user.nombre_completo , user.donacions.sum(:monto)]
        @aux2 << par
    end


    #grafico 2    
    12.times do |mes|
      if !mes.nil? && mes != 0
        suma_montos_validos = Donacion.where(mes.to_s+' = CAST(strftime("%m", created_at) as integer)').sum(:monto)
        par = [Date::MONTHNAMES[mes], suma_montos_validos]
        @aux3 << par
      end
    end

    #grafico 4
    12.times do |mes|
      if !mes.nil? && mes != 0
        cantidad_mensual = Actividad.where(mes.to_s+' = CAST(strftime("%m", fecha) as integer)').count
        par = [Date::MONTHNAMES[mes], cantidad_mensual]
        @aux4 << par
      end
    end
  end
end