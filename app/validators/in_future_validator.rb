class NotInPastValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "Campaign must start in the future") if value <= Time.zone.today
  end
end
