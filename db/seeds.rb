#    Datos de Inicialización

GrupoPago.create([{nombre: 'Semanal'}, {nombre: 'Bisemanal'}, {nombre: 'Quincenal'}, {nombre: 'Mensual'}])
Estatus.create([{nombre: 'Activo'}, {nombre: 'Cesante'}, {nombre: 'Vacaciones'}, {nombre: 'Licencia'}])
TipoSalario.create([{nombre: 'Mensual'}, {nombre: 'Por Hora'}])
TipoEmpleado.create([{nombre: 'Permanente'}, {nombre: 'Eventual'}])
Sexo.create([{nombre: 'Femenino'}, {nombre: 'Masculino'}])
EstadoCivil.create([{nombre: 'Soltero(a)'}, {nombre: 'Casado(a)'}, {nombre: 'Unido(a)'}, {nombre: 'Divorciado(a)'}])
FormaPago.create([{nombre: 'Efectivo'}, {nombre: 'Cheque'}, {nombre: 'ACH'}])
Sector.create([{nombre: 'Normal'}, {nombre: 'Construccion'}, {nombre: 'Portuario'}])
Departamento.create(codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
CentroCosto.create(codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
Proyecto.create(codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
Cargo.create(departamento_id:1, codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
Seccion.create(codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
Relacion.create([{nombre: 'Hijo(a)'}, {nombre: 'Conyugue'}, {nombre: 'Padre'}, {nombre: 'Hermano(a)'}, {nombre: 'Otro'}])
Fase.create(codigo: '0000', nombre: '***SIN ASIGNAR***', activo: true)
NivelEstudio.create([{nombre: 'Primario'}, {nombre: 'Secundario'}, {nombre: 'Bachiller'}, {nombre: 'Universitario'}, {nombre: 'Postgrado'}, {nombre: 'Master'}, {nombre: 'Doctorado'}, {nombre: 'Otro'}])
Licencia.create([ {tipo: 'A', vehiculo: 'Bicicleta'}, {tipo: 'B', vehiculo: 'Motocicleta'}, {tipo: 'C', vehiculo: 'Automoviles y camionetas'}, {tipo: 'D', vehiculo: 'Camiones livianos'}, {tipo: 'E', vehiculo: 'Transporte publico de Pasajeros'}, {tipo: 'E1', vehiculo: 'Selectivo'}, {tipo: 'E2', vehiculo: 'Autobuses hasta 16 pasajeros'}, {tipo: 'E3', vehiculo: 'Autobuses de mas de 16 pasajeros'}, {tipo: 'F', vehiculo: 'Camiones unitarios'}, {tipo: 'G', vehiculo: 'Camiones combinados'}, {tipo: 'H', vehiculo: 'Transporte de carga peligrosa'}, {tipo: 'I', vehiculo: 'Equipo pesado'}, {tipo: 'No Tiene', vehiculo: 'NA'}])
TiposTelefono.create([ {nombre: 'Celular'}, {nombre: 'Domicilio'}, {nombre: 'Oficina'} ])
StatusEstudio.create([ {nombre: 'Finalizado', finalizado: true}, {nombre: 'Sin Finalizar', finalizado: false}, {nombre: 'Cursando', finalizado: false} ])
