<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 
    </head>
    <body>
        <input type="text" class='replace'> 
        <button class='clicken'>click</button>
        <input type="text" class='replacea'> 
        <button class='click'>click</button>
        <div></div>
        
               <script>
          
          $('.clicken').click(function(){
             var  info =  $('.replace').val();
             console.log(info);
              var replaced = info.replace(/a/g , "!");
                replaced = replaced.replace(/e/g , "@");
                replaced = replaced.replace(/i/g , "%");
                replaced = replaced.replace(/o/g , "#");
                replaced = replaced.replace(/u/g , "$");

                
                $('div').html(replaced);
          });
          $('.click').click(function(){
             var  info =  $('.replacea').val();
             console.log(info);
              var replaced = info.replace(/a/g , "&");
                replaced = replaced.replace(/e/g , "*");
                replaced = replaced.replace(/i/g , "=");
                replaced = replaced.replace(/o/g , "+");
                replaced = replaced.replace(/u/g , "-");

                
                $('div').html(replaced);
          });
            
        </script>
        
    </body>
</html>
