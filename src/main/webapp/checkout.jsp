<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>Checkout</title>
        <link rel="stylesheet" href="css/checkout.css">

    </head>


    <body>


        <div class="body-text">Write your payments information in the right fields.</div>
        <form>
            <div class="form-container">
              <div class="personal-information">
                <h1>Payment Information</h1>
              </div>

                  <input id="column-left" type="text" name="first-name" placeholder="First Name"/>
                  <input id="column-right" type="text" name="last-name" placeholder="Surname"/>
                  <input id="input-field" type="text" name="number" placeholder="Card Number"/>
                  <input id="column-left" type="text" name="expiry" placeholder="MM / YY"/>
                  <input id="column-right" type="text" name="cvc" placeholder="CCV"/>

                  <div class="card-wrapper"></div>

                  <input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Streed Address"/>
                  <input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/>
                  <input id="column-right" type="text" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="5" placeholder="ZIP code"/>
                  <input id="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/>
                  <input id="input-button" type="submit" value="Submit"/>
            </div>
        </form>


        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/card.js'></script>
        <script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/121761/jquery.card.js'></script><script  src="js/checkout.js"></script>

        </body>
</html>
