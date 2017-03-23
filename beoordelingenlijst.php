
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <input type='text' class='cijfer'><button class='but1' >check 1</button><button class='but2' >check 2</button>
        <div id='resultaat'></div>
        <script>
            $lijst = "";
            function checknumber($value){
                if($value <= 49){
                    return "onvoldoende";
                }else if($value >= 50 && $value <= 59){
                    return "matig"; 
                }else if($value >= 60 && $value <= 74){
                    return "voldoende"; 
                }else if($value >= 75 && $value <= 100){
                    return "goed"; 
                }
            }
            
            $('button').click(function(){ 
                $cijfer = $('.cijfer').val();
                $beoordeling = checknumber($cijfer);
                if ($(this).hasClass("but1")) {
                    $lijst += 'Het cijfer is '+$cijfer+' en is dus '+$beoordeling+'<br>';
                }else if($(this).hasClass("but2")){
                    $lijst += 'De beoordeling is '+$beoordeling+' , want het cijfer is '+$cijfer+'<br>';
                }
                $('#resultaat').html($lijst);
            });
        </script>
    </body>
</html>
