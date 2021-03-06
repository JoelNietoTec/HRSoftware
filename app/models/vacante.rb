class Vacante < ActiveRecord::Base
  #  Paginacion
  self.per_page = 6
  #  Filtros
  def self.search(search, page)
    unless search.blank?
      order('created_at DESC').where(area_profesional_id: search).paginate(page: page, per_page: 6)
    else
      order('created_at DESC').paginate(page: page, per_page: 6)
    end
  end
end
