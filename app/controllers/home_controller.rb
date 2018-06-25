class HomeController < ApplicationController
  def index
    #SELECT EXTRACT(DAY FROM TIMESTAMP '2001-02-16 20:38:40');

    @total_Donaciones = Donacion.sum(:monto)
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
  	@suma_usuario = 0
    @total_mes = 0

    #grafico 1
    User.all.each do |user|
      @suma_usuario = 0
      user.donacions.each do |don|
        conteo = 0
        conteo = 1 if don.created_at.month == Time.now.month

    		if conteo > 0
      	  @suma_usuario += don.monto
          
          
    		end   
      end
      par = [user.nombre_completo, @suma_usuario]
      @aux << par
    end

    #grafico 3
    User.all.each do |user|
        par = [user.nombre_completo , user.donacions.sum(:monto)]
        @aux2 << par
    end


    #grafico 2    
    12.times do |mes|
      if !mes.nil? && mes != 0
        suma_montos_validos = 0
        Donacion.all.each do |don|
          if don.created_at.month == mes
            suma_montos_validos += don.monto
          end
        end

        par = [Date::MONTHNAMES[mes], suma_montos_validos]
        @aux3 << par
      end
    end

    #grafico 4
    12.times do |mes|
      if !mes.nil? && mes != 0
        suma_actividades = 0
        Actividad.all.each do |act|
          if act.fecha.month == mes
            suma_actividades += 1
          end
        end
        par = [Date::MONTHNAMES[mes], suma_actividades]
        @aux4 << par
      end
    end

      mes = Time.now.month
      if !mes.nil? && mes != 0
        Donacion.all.each do |dona|
          if dona.created_at.month == mes
            @total_mes += dona.monto
          end
        end
      end
 end
end