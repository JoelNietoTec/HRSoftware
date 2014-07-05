#    Datos de Inicialización
=begin
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
=end
NivelEstudio.create([{nombre: 'Primario'}, {nombre: 'Secundario'}, {nombre: 'Bachiller'}, {nombre: 'Universitario'}, {nombre: 'Postgrado'}, {nombre: 'Master'}, {nombre: 'Doctorado'}, {nombre: 'Otro'}])
