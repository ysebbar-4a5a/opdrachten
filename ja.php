

  
  <script>
    
    </script>
    
    <!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    </head>
    <body>
    
  Invoerveld  <input>
  <button>knop</button>
  <div></div>
    <script>
      $('button').click(function(){
          value = $("input").val();
          halo = value.split(',');
          Output = "<br>";
          console.log(halo);
          for(i = 0; i < halo.length; i++ ){
             Output = Output + halo[i]+"<br>";
          }
          console.log(Output);
          $("div").html(Output);
      });
    </script>
    </body>
</html>
