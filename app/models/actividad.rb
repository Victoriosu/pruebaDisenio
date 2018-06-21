class Actividad < ApplicationRecord
	validate :fecha?

	#asociaciones
	belongs_to :user, dependent: :destroy

	after_create :set_pendiente

	def set_pendiente
		self.estado = "Pendiente"
		self.save
	end

	def fecha?
	  if self.fecha == nil
	  	errors.add :fecha, ": Debe seleccionar"
	  	return false
	  elsif self.fecha < Date.today+2.days
	    errors.add :fecha, "La fecha de registro debe ser más de 48 hrs."
	    return false
	  end
	end

	


end
