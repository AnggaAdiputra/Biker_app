 $(document).ready(function() {
        $('#cari').on('submit', function(event) {

   var name = document.forms["cari"]["name"].value;
   if (name==null || name=="")
   {
         alert("Search Must Be Filled");
                 return false;
         }
         else{
                 return true;
         }
         
});
})