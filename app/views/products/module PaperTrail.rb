module PaperTrail
  class Version < ActiveRecord::Base
    self.table_name = "versions"

    # Override the object deserialization to allow Date and related classes
    def object_deserialized
      @object_deserialized ||= YAML.safe_load(
        object,
        permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, Symbol],
        aliases: true
      )
    end
  end
end
