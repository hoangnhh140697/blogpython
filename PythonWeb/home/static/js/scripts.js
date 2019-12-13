$(document).ready(function() {
    // Sidebar toggle behavior
    $('#sidebarCollapse').on('click', function() {
      console.log("Test");
      $('#sidebar, #content').toggleClass('active');
    });
  });
  