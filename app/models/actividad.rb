class Actividad < ApplicationRecord
	validate :fecha?

	#asociaciones
	belongs_to :user

	after_create :set_pendiente

	def set_pendiente
		self.estado = "Pendiente"
		self.save
	end

	def fecha?
	  if self.fecha < Date.today+2.days
	    errors.add :fecha, "La fecha de registro debe ser más de 48 hrs."
	  end
	end
end
