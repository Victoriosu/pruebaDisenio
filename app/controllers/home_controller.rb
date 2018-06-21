class HomeController < ApplicationController
  def index

  	@donaciones_mensuales = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
  	@donaciones_proyectadas = Donacion.where('strftime("%m", created_at) > "#{Time.now.month}"')
  	@suma = 0
  	@usuario = nil
  	@aux = [["Usuario", "Donaciones en este mes"]]
    @aux2 = [["Usuario", "Usuarios registrados"]]
    @aux4 = [["Actividad","Activida Mensual"]]
  	par = []
    par2 = []
    par3 = []
    par4 = []
  	User.all.each do |user|
  		if user.donacions.futuras.count > 0
  			par = [user.nombre_completo , user.donacions.futuras.sum(:monto)]
  			@aux << par
  		end
    end

    User.all.each do |user|
      if (user.donacions.count > 0)
        par2 = [user.nombre_completo, user.donacions.count]
        @aux2 << par2
      end
    end

    Actividad.all.each do |acti|
      <% (1..12).each do |i| %>
        if(acti.fecha.month)
        par4 = [acti.Actividad.count]
      <% end %>
      

      
    end



  end






end
