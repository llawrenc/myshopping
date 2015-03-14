class SuburbDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= %w(Suburb.suburb Suburb.state Suburb.post_code)
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= %w(Suburb.suburb Suburb.post_code)
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.suburb,
        record.state,
        record.post_code
      ]
    end
  end

  def get_raw_records
    # insert query here
    Suburb.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
