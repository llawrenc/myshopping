class SuburbDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def_delegators :@view, :link_to, :edit_suburb_path

  def iniatilize(view)
    @view = view
  end

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['Suburb.locality', 'Suburb.state', 'Suburb.post_code']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['Suburb.locality', 'Suburb.state', 'Suburb.post_code']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        link_to(record.locality, edit_suburb_path(record)),
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
