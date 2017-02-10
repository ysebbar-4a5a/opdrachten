<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                kleur = $("select").val();
                hoogte = $(".hoogte").val("200");
                breedte = $(".breedte").val("200");
                $("div").css("background-color", kleur);
                $("div").height("200");
                $("div").width("200");

                $( "input" ).keyup(function() {
                     hoogte = $(".hoogte").val();
                     breedte = $(".breedte").val();
                    $("div").height(hoogte);
                    $("div").width(breedte);
                });
                $("select").change(function() {
                    kleur = $("select").val();
                    $("div").css("background-color", kleur);
                });
            });
        </script>
    </head>
    <body>
        hoogte  <input  class='hoogte' type="text" name=""> pixels <br>
        breedte <input  class="breedte" type="text" name=""> pixels <br>
        kleur   <select>
                    <option value="#25B003">groen</option>
                    <option value="#EAFD3F">geel</option>
                    <option value="#0B1290">blauw</option>
                    <option value="#F10317">rood</option>
                    <option value="#91938B">grijs</option>
                    <option value="#050505">zwart</option>
                </select>
                <div style='border:1px solid black'></div>
                <div style='border:1px solid black'></div>
                <div style='border:1px solid black'></div>
    </body>
</html>
