<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%!
    public static boolean check_login(HttpServletRequest req){
        
        // GET THE SESSION OBJECT
        HttpSession session = req.getSession();
        
        // GET THE COOKIES ARRAY
        Cookie[] cs = req.getCookies();

        // IF THE SESSION LOGIN IS NOT SET
        if(session.getAttribute("userid") == null){

            if(cs == null) return false;
            
            // LOOP THROUGH THE COOKIES TO SEARCH FOR THE LOGIN COOKIE
            for(int i = 0; i < cs.length; i++){

                // IF YOU CAN FIND IT
                if(cs[i].getName().equals("userid")){

                    // SET THE SESSION LOGIN
                    session.setAttribute("userid", cs[i].getValue());
                    
                    // AND SIGNAL TO THE CALLER THAT EVERYTHING IS OK
                    return true;

                }//if

            }//for
            
            // YOU GOT HERE, SESSION LOGIN WAS NOT SET AND YOU DID NOT FIND THE COOKIE
            // SIGNAL TO THE CALLER THIS MIGHT BE AN UNAUTHORIZED REQUEST
            return false;

        }//if
        
        
        // THE SESSION WAS SET, EVERYTHING IS OK
        return true;
    }//check_login
%>
<% check_login(request); %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF=8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="icon" href="images/logo.ico" type="image/x-icon" /> 
        <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
        <title>About Us - RemyTutor</title>

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/style.css">

        <!-- HOMEPAGE CSS -->
        <link rel="stylesheet" href="css/home.css">

        <!-- ABOUT US CSS -->
        <link rel="stylesheet" href="css/about.css">

        <!-- SIGN-UP/SIGN-IN POP-UP CSS -->
        <link rel="stylesheet" href="css/sign_up_in.css">

        <!-- FONTAWESOME CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

        <!-- jQuery/jQuery UI -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    </head>
    <body>

        <!-- WEBSITE HEADER start -->

        <header>

            <div id="logo_wrap">
                <a href="/remytutor"><img src="images/logo.png"></a>
            </div>

            <div id="menu_wrap">
                <nav>
                    <a href="/remytutor">Home</a>
                    <a href="about.jsp" class="current_page">About us</a>
                    <c:choose>
                      <c:when test="${sessionScope.userid != null}">
                        <a href="/remytutor/dashboard"><img src="/imageset/profile/${sessionScope.userid}.jpg">&nbsp;</a>
                      </c:when>
                      <c:otherwise>
                        <a href="" onclick="toggle_modal(event);">Sign in</a>
                      </c:otherwise>
                    </c:choose>
                </nav>
            </div>

        </header>

        <!-- WEBSITE HEADER end -->

        <!-- ABOUT US MAIN BODY start -->

        <!-- IMAGE AND QUOTATION BLOCK start -->

        <div class="main_image_container">
            <img src="images/about_us_image.png" class="main_image" alt="Books">
                       <div class="quote_container">
            <blockquote>
                <hr class="horizontal_line"/>
                <br>
                <p class="quotation">"If you have knowledge, let others light their candles in it."</p>
                <br>
                <hr class="horizontal_line"/>
            </blockquote>
            <a class="author_quote" href="https://en.wikipedia.org/wiki/Margaret_Fuller" target="_blank">&#126;Margaret Fuller</a>
            </div>
        </div>

        <!-- IMAGE AND QUOTATION BLOCK end -->

        <!-- INFO ROW: WEBSITE INFORMATION start -->

        <div class="website_info_row">
            <h2>What is RemyTutor?</h2>
            <br>
            <p>In these trying times more than ever, being able to keep ourselves healthy and active without leaving the comfort of our homes is essential, although not always easy. This project might be an additional handy tool for making us momentarily forget the urge to go outside by making our indoor life a bit more pleasant.  
            </p> 
            <br />
            <p>RemyTutor is a remote learning platform for anything people might want to teach and trasmit to other learning enthusiasts. Ranging from school subjects, like math or history, to more practical things, like yoga or dance, RemyTutor is the right place to find a teacher and book a lesson! When it comes to teaching however, finding the right person, or even finding someone, can be a challenging task and might often feel like a Russian roulette. Therefore, our goal is to provide an online safe place where supply and demand is offered in a structured way, in order to ease the flow of teaching and to improve its overall quality.
        </div>
        <hr class="horizontal_line"/>

        <!-- INFO ROW: WEBSITE INFORMATION end -->

        <!-- MEMBER ROWS start -->

        <div class="team_info_row">
            <h2>Our Team:</h2>      
        </div>

        <div class="main_container">

            <!-- first member -->  
            <div class="info_member_container">
                <p class="member_name">Marco Dell'Anna</p>
                <br>
                <p>Nullam tellus est, dignissim at nisi nec, pellentesque convallis diam. Pellentesque in nibh non ante pulvinar venenatis accumsan sed metus. Fusce magna magna, ultrices eget dui sed, elementum viverra quam. Maecenas ullamcorper, eros ac porttitor posuere, ligula sem imperdiet justo, sed convallis metus lectus vitae nulla. Fusce pharetra tempor ante eget tempor. Aenean nec mollis neque. Praesent et ligula mauris.
                </p>  
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/MarcoG.jpg" alt="marco_dell'anna_photo"><br><br>
                <a class="button" href="mailto:marco.dellanna@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- second member -->              
            <div class="info_member_container">
                <p class="member_name">Xianwen Jin</p>
                <br>
                <p>Proin volutpat aliquet nisi, eget commodo nulla tristique at. Vestibulum tincidunt ornare nisi, vehicula pulvinar dui tristique non. Etiam quis finibus ex. Nunc eleifend, leo ac sagittis convallis, risus diam tempor dolor, vitae ornare sapien turpis non tortor. Praesent dignissim massa felis, id porttitor odio consectetur ac. Nam vitae rutrum ipsum, sed mattis diam. Vivamus venenatis purus eu sapien ultricies, elementum rutrum nunc sagittis.
                </p>  
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Jin.jpg" alt="xianwen_jin_photo"><br><br>
                <a class="button" href="mailto:xianwen.jin@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- third member -->              
            <div class="info_member_container">
                <p class="member_name">Marco Dalla Mutta</p>
                <br>
                <p>Pellentesque et mauris ut libero tincidunt fermentum in pellentesque felis. Duis eu urna vitae leo venenatis tincidunt. Ut commodo sed diam sed malesuada. Donec pharetra, purus imperdiet lacinia placerat, odio ipsum vulputate augue, aliquam porttitor erat nisi vitae libero. Aenean ornare aliquet finibus. Donec consequat odio et turpis egestas lobortis facilisis et eros.
                </p>  
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/MarcoDM.jpg" alt="marco_dalla_mutta_photo"><br><br>
                <a class="button" href="mailto:marco.dallamutta@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- fourth member -->              
            <div class="info_member_container">
                <p class="member_name">Memen Salihi</p>
                <br>
                <p>Sed eget tempor enim, id viverra nisi. Curabitur blandit est erat, vel sodales nisl suscipit a. Duis placerat porta erat, at commodo augue finibus quis. Pellentesque ac posuere est. Quisque ut augue maximus mi maximus eleifend. Cras eget ante et est efficitur maximus. Proin hendrerit iaculis lacinia.
                </p>  
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Memen-photo.jpeg" alt="memen_salihi_photo"><br><br>
                <a class="button" href="mailto:memenhamzahobaid.salihi@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- fifth member -->              
            <div class="info_member_container">
                <p class="member_name">Victor Semencenco</p>
                <br>
                <p>Nullam tincidunt sit amet eros nec lacinia. Duis ac enim non purus malesuada facilisis id sit amet sem. Pellentesque et viverra lectus. Vivamus a orci in magna dignissim efficitur auctor id eros. Sed et sapien eget odio semper mollis id et libero. In tempor ante quis euismod tristique. Aenean sollicitudin lacus nec turpis varius sollicitudin. Sed at ex non justo hendrerit ultrices nec quis mauris.
                </p>  
            </div>            

            <div class="photoContact_member_container">
                <img class="photo_container" src="images/Victor-photo.jpeg" alt="victor_semencenco_photo"><br><br>
                <a class="button" href="mailto:victor.semencenco@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

            <!-- sixth member -->              
            <div class="info_member_container">
                <p class="member_name">Ahmad Bashir Usman</p>
                <br>
                <p>Aliquam at justo urna. Aenean posuere egestas maximus. Curabitur non ex cursus, volutpat ligula elementum, porta arcu. Vestibulum interdum ipsum massa, quis pellentesque nulla molestie non. Nulla et augue non massa malesuada consectetur non ac tellus. Donec sodales orci in cursus semper.
                </p>  
            </div>            

            <div class="photoContact_member_container">               
                <img class="photo_container" src="images/ahmad-photo.jpeg" alt="ahmad_bashir_usman_photo"><br><br>
                <a class="button" href="mailto:ahmadbashir.usman@studenti.unipd.it">CONTACT</a>               
            </div>

            <div class="break_flexbox"></div>

        </div>

        <br>
        <br>

        <!-- MEMBER ROWS end -->

        <!-- SIGN IN PAGE start -->

       <div class="modal">

            <div class="sign_up_in">

                <div class="sign_up">

                    <div>

                        <p><img src="images/signup-image.png"><br><br><a href="" onclick="flip_registration(event)">I am already a member</a></p>


                    </div>

                    <div>

                        <h2>Sign up</h2>

                        <form action="indexpost" method="POST" autocomplete="off">
                            
                        <span><i class="fas fa-user"></i><input type="text" placeholder="First name" name="firstname" autocomplete="off" required></span>
                            
                        <span><i class="fas fa-user"></i><input type="text" placeholder="Last name" name="lastname" autocomplete="off" required></span>

                        <span><i class="fas fa-envelope"></i><input type="email" placeholder="E-mail address" name="email" autocomplete="off"></span>

                        <span><i class="fas fa-lock"></i><input type="password" placeholder="Password" name="passwd" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required  oninvalid="this.setCustomValidity('The password must contain both upper and lower case characters plus a number')"
                        oninput="this.setCustomValidity('')"></span>

                        <span><i class="fas fa-unlock"></i><input type="password" placeholder="Repeat password" name="passwd_confirm" autocomplete="off" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required></span>

                        <span><label class="custom_checkbox">
                            <input type="checkbox" required>
                            <span class="checkmark"></span>
                            </label> I agree to terms and conditions and the privacy policy</span>

                        <br><input type="submit" value="Register" class="button" name="register">

                            <span id="register_error"></span>
                        </form>
                    </div>

                </div>

                <div class="sign_in">

                    <div>

                        <p><img src="images/signin-image.jpg"><br><br><a href="" onclick="flip_registration(event)">Create an account</a></p>

                    </div>

                    <div>

                        <h2>Sign in</h2>

                        <span><i class="fas fa-envelope"></i><input type="email" placeholder="E-mail address"></span>

                        <span><i class="fas fa-unlock"></i><input type="password" placeholder="Password"></span>

                        <span><label class="custom_checkbox">
                            <input type="checkbox" checked>
                            <span class="checkmark"></span>
                            </label> Remember me</span>

                        <br><input type="submit" value="Log in" class="button">
                        
                        <span id="login_error"></span>

                    </div>

                </div>

            </div>

            <div onclick="toggle_modal(event)" class="close_modal">X</div>

        </div>


        <!-- SIGN IN PAGE end -->

        <!-- ABOUT US MAIN BODY end -->

        <!-- WEBSITE FOOTER start -->

        <footer>

            <p>
                <img src="images/logo_hatonly.png">&copy; RemyTutor: sharing knowledge and passions &hearts;

                <i class="fab fa-facebook-square fa-2x" style="color: #3b5998"></i>
                <i class="fab fa-twitter-square fa-2x" style="color: #1DA1F2"></i>
                <i class="fab fa-instagram-square fa-2x" style="color: #833AB4"></i>
            </p>

        </footer>

        <!-- WEBSITE FOOTER end -->

        <!-- MAIN JS -->
        <script>
            var topics = [];
        </script>
        <script src="js/home.js"></script>

    </body>

</html>