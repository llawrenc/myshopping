$ ->
  $('#suburbs-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#suburbs-table').data('source')
    pagingType: 'full_numbers'
