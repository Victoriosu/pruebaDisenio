# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Perfil.create(nombre: 'Administrador')
#Perfil.create(nombre: 'Donante')
#Perfil.create(nombre: 'Voluntario')


#User.create(email: "admin@admin.cl", password: "password", password_confirmation: "password", perfil_id: Perfil.first.id, nombre_completo: 'Júan Perez',created_at: Time.now-3.month)
#User.create(email: "donante@donante.cl", password: "password", password_confirmation: "password", perfil_id: Perfil.second.id, nombre_completo: 'Leonardo Farcas',created_at: Time.now-2.month)
#User.create(email: "voluntario@voluntario.cl", password: "password", password_confirmation: "password", perfil_id: Perfil.third.id, nombre_completo: 'Sebastián Piñera',created_at: Time.now-1.month)






Donacion.create(user_id: User.first.id, monto: 250000, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 23000, created_at: Time.now-1.month)
Donacion.create(user_id: User.third.id, monto: 12000, created_at: Time.now-2.month)
Donacion.create(user_id: User.first.id, monto: 13000, created_at: Time.now-3.month)
Donacion.create(user_id: User.first.id, monto: 23231, created_at: Time.now-4.month)
Donacion.create(user_id: User.second.id, monto: 34453, created_at: Time.now-5.month)
Donacion.create(user_id: User.third.id, monto: 23000, created_at: Time.now-6.month)
Donacion.create(user_id: User.second.id, monto: 14000, created_at: Time.now-1.month)
Donacion.create(user_id: User.first.id, monto: 15000, created_at: Time.now-2.month)
Donacion.create(user_id: User.second.id, monto: 16000, created_at: Time.now-3.month)
Donacion.create(user_id: User.third.id, monto: 17000, created_at: Time.now-4.month)
Donacion.create(user_id: User.third.id, monto: 18000, created_at: Time.now-5.month)
Donacion.create(user_id: User.first.id, monto: 19000, created_at: Time.now-6.month)
Donacion.create(user_id: User.second.id, monto: 20000, created_at: Time.now-1.month)
Donacion.create(user_id: User.third.id, monto: 21000, created_at: Time.now-2.month)
Donacion.create(user_id: User.first.id, monto: 22000, created_at: Time.now-3.month)
Donacion.create(user_id: User.first.id, monto: 23000, created_at: Time.now-4.month)
Donacion.create(user_id: User.first.id, monto: 10000, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 13000, created_at: Time.now)
Donacion.create(user_id: User.third.id, monto: 11000, created_at: Time.now)
Donacion.create(user_id: User.first.id, monto: 300000, created_at: Time.now)
Donacion.create(user_id: User.first.id, monto: 245688, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 500000, created_at: Time.now)
Donacion.create(user_id: User.third.id, monto: 70000, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 1300, created_at: Time.now)
Donacion.create(user_id: User.third.id, monto: 400000, created_at: Time.now)
Donacion.create(user_id: User.first.id, monto: 20000, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 40000, created_at: Time.now)
Donacion.create(user_id: User.third.id, monto: 70000, created_at: Time.now)
Donacion.create(user_id: User.first.id, monto: 40000, created_at: Time.now)
Donacion.create(user_id: User.second.id, monto: 20000, created_at: Time.now)
Donacion.create(user_id: User.third.id, monto: 30000, created_at: Time.now+1.week)
Donacion.create(user_id: User.second.id, monto: 50000, created_at: Time.now+1.month)
Donacion.create(user_id: User.first.id, monto: 700000, created_at: Time.now+1.day)
Donacion.create(user_id: User.third.id, monto: 150000, created_at: Time.now+1.month)
Donacion.create(user_id: User.first.id, monto: 3000, created_at: Time.now+1.month)
Donacion.create(user_id: User.second.id, monto: 50000, created_at: Time.now+2.month)
Donacion.create(user_id: User.third.id, monto: 60000, created_at: Time.now+2.month)
Donacion.create(user_id: User.first.id, monto: 2000, created_at: Time.now+2.month)
Donacion.create(user_id: User.second.id, monto: 123000, created_at: Time.now+2.month)

Actividad.create(nombre: "act", fecha: Date.parse('01/05/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('02/05/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('03/05/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('04/05/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('05/05/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('06/05/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('01/06/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('02/06/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('03/06/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('04/06/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('05/06/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('06/06/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('01/07/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('02/07/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('03/07/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('04/07/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('05/01/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('06/01/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('07/01/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('08/01/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('09/01/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/02/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/02/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/02/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/02/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/03/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/03/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/03/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/03/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/04/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/04/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/08/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/08/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/12/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/12/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/12/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/11/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/11/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/11/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/10/2018'), user_id: User.second.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/10/2018'), user_id: User.third.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/10/2018'), user_id: User.first.id)
Actividad.create(nombre: "act", fecha: Date.parse('10/10/2018'), user_id: User.second.id)
