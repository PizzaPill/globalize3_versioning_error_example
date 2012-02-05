class GlobalizeTest < ActiveRecord::Base
  translates :title, :description, :versioning => true
end
