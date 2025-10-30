module PaperTrail
  class Version < ActiveRecord::Base
    self.table_name = "versions"
    def changeset
      return {} if object_changes.blank?
      # YAML.safe_load(object_changes, permitted_classes: [Time, Date, ActiveSupport::TimeWithZone, Symbol])
      @changeset ||= YAML.safe_load(
        object_changes,
        permitted_classes: [Time, Date, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone, Symbol],
        aliases: true
      )
    end

    def object_deserialized
      @object_deserialized ||= YAML.safe_load(
        object,
        permitted_classes: [Date, Time, ActiveSupport::TimeWithZone, ActiveSupport::TimeZone, Symbol],
        aliases: true
      )
    end
  end
end 
