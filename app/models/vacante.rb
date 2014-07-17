class Vacante < ActiveRecord::Base
  self.per_page = 6
  def self.search(search, page)
    if search.to_i > 0
      order('fecha_vencimiento DESC').where('area_profesional_id = ?', search).paginate(page: page, per_page: 6)
    else
      order('fecha_vencimiento DESC').paginate(page: page, per_page: 6)
    end
  end
end
