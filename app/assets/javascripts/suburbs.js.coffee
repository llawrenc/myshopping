$ ->
  $('#suburbs-table').dataTable
    responsive: true
    processing: true
    serverSide: true
    bStateSave: true
    bJQueryUI: true
    sPaginationType: "bootstrap"
    ajax: $('#suburbs-table').data('source')
    pagingType: 'full_numbers'
