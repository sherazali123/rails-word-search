// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$("#example1").DataTable();
$('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
});
