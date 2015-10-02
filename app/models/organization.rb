class Organization < ActiveRecord::Base
  validates_presence_of :name
  validates_format_of :zip, with: /\A(\d{5}(\-\d{4})?)?\z/
end
