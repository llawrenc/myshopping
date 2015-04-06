class ItemStoresDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari

  def_delegators :@view, :image_tag, :link_to, :edit_item_store_path, :number_to_currency

  def iniatilize(view)
    @view = view
  end

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['Item.description', 'ItemStore.price', 'Store.store_name']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['Item.description', 'Store.store_name']
  end

  private

  def data
    records.map do |record|
      [
				image_tag(record.item.image_path, size: "90x90", alt: "Image"),
				link_to(record.item.description, edit_item_store_path(record)),
        number_to_currency(record.price),
        record.store.store_name
      ]
    end
  end

  def fetch_item_stores
    itemstores = ItemStore.order("#{sort_column} #{sort_direction}")
    itemstores = ItemStore.page(page).per_page4(per_page)
    if params[:sSearch].present?
      itemstores = ItemStore.includes([ :item, :store ]).where("stores.store_name like :search or items.description like :search", search: "%#{params[:sSearch]}%")
    end
    itemstores		
  end

  def get_raw_records
    # insert query here
    # ItemStore.includes([ :item, :store ]).all 
		ItemStore.includes( :item, :store ).references(:item, :store)
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
