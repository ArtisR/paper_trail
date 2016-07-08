class Fruit < ActiveRecord::Base
  if ENV["DB"] == "postgres" || JsonVersion.data_source_exists?
    has_paper_trail class_name: "JsonVersion"
  end
end
