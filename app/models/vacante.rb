class Vacante < ActiveRecord::Base
  self.per_page = 6
  def self.search(area_profesional_id, page)
    paginate :per_page => 5, :page => page,
           :conditions => ['area_profesional_id = ?', area_profesional_id]
  end
end
