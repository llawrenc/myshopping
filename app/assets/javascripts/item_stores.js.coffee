jQuery ->
  $('#itemstores-table').dataTable( {
    responsive: false
    processing: true
    serverSide: true
    bStateSave: true  
    bJQueryUI: true
    sPaginationType: "bootstrap"
    ajax: $('#itemstores-table').data('source')
    pagingType: 'full_numbers'
    aaSorting: [[ 2, 'asc' ]]
    columns: [
      { width: "10%", searchable: false, orderable: false }
      { width: "15%", searchable: true, orderable: true }
      { width: "8%", searchable: false, orderable: true }
      { width: null, searchable: true, orderable: true }
    ]
  } );