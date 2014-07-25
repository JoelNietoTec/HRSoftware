#encoding: UTF-8

module ApplicationHelper
  def custom_bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = 'info' if type == 'notice'
      type = 'warning'   if type == 'alert'
      type = 'success'   if type == 'success'
      text = "<script>toastr.#{type}('#{message}')</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end

  #Fecha en Español
  def fecha_espanol fecha
    mes = ""
    if fecha.is_a? Date
      mes = case fecha.month
        when 1 then "Enero"
        when 2 then "Febrero"
        when 3 then "Marzo"
        when 4 then "Abril"
        when 5 then "Mayo"
        when 6 then "Junio"
        when 7 then "Julio"
        when 8 then "Agosto"
        when 9 then "Septiembre"
        when 10 then "Octubre"
        when 11 then "Noviembre"
        when 12 then "Diciembre"
      end
    end
    "#{fecha.day} de #{mes} de #{fecha.year}"
  end

  #Tiempo Trasncurrido
  def pasado_palabras fecha
    distancia = ""
    if Date.today.year - fecha.year >= 1
      distancia = Date.today.year - fecha.year
      distancia = "Hace #{distancia} años"
    elsif Date.today.month - fecha.month >= 1
      distancia = Date.today.month - fecha.month
      distancia = "Hace #{distancia} meses"
    elsif Date.today.strftime("%U").to_i - fecha.strftime("%U").to_i >= 1
      distancia = Date.today.strftime("%U").to_i - fecha.strftime("%U").to_i
      if distancia = 1
        distancia = "La semana pasada"
      else
        distancia = "Hace #{distancia} semanas"
      end
    elsif Date.today.day - fecha.day >= 1
      distancia = Date.today.day - fecha.day
      if distancia = 1
        distancia = "Ayer"
      else
        distancia = "Hace #{distancia} días"
      end
    elsif Date.today.hours - fecha.hours >= 1
      distancia = Date.today.hours - fecha.hours
      if distancia = 1
        distancia = "Hace una hora"
      else
        distancia = "Hace #{distancia} horas"
      end
    else
      distancia = "Hace algunos minutos"
    end
    distancia
  end
end
