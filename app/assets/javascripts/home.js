// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$("#example1").DataTable();
$('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false,
          "oLanguage": {
            "oPaginate": {
            "sFirst": "<<", // This is the link to the first page
            "sPrevious": "སྔོན་མ།", // This is the link to the previous page
            "sNext": "རྗེས་མ།", // This is the link to the next page
            "sLast": ">>", // This is the link to the last page
            }
          }
});
