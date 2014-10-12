class Marcacion < ActiveRecord::Base

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      marcacion = find_by_id(row["id"]) || new
      marcacion.attributes = row.to_hash.slice(:department, :name, :no, :date, :location, :id_number, :verify_code, :card_no)
      marcacion.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
      when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def accessible_attributes
    [department, name, no, date, location, id_number, verify_code, card_no]
  end
end
