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
        when 1 then "enero"
        when 2 then "febrero"
        when 3 then "marzo"
        when 4 then "abril"
        when 5 then "mayo"
        when 6 then "junio"
        when 7 then "julio"
        when 8 then "agosto"
        when 9 then "septiembre"
        when 10 then "octubre"
        when 11 then "noviembre"
        when 12 then "diciembre"
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
    else
      distancia = "Hoy"
    end
    distancia
  end
end
