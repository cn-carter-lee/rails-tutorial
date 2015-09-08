require 'csv'
class InitialGroupsParser

  def self.create_initial_groups
    parsed_csv.each do |row|
      row = row.to_hash.symbolize_keys
      next unless row[:id]

      group = find_or_create_group(row)
      update_group(group, row)
    end
  end

  private

  def self.find_or_create_group(row)
    Group.find_or_create_by!(id: row[:id])
  end

  def self.update_group(group, row)
    group.update_attributes(
        row.slice(*attributes)
    )
  end

  def self.attributes
    [:id, :group_name, :description]
  end

  def self.parsed_csv
    csv_text = File.read(Rails.root.join('lib/data', 'initial_groups.csv'))
    CSV.parse(csv_text, :headers => true)
  end

end