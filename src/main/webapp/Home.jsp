<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DreamMakers Event Planning</title>
    <!-- Basic page styling -->
    <link rel="stylesheet" type="text/css" href="base.css">
    <!-- User styling -->
    <link rel="stylesheet" type="text/css" href="style.css">

<script>
    $(function () {

        $(window).scroll(function () {
            /************************
             * Paralax image effect *
             ************************/
            var FACTOR = 0.5;
            var $heroImage = $('.hero-image');

            /* Calculate percentComplete, which goes from 0 to 1 */
            var distanceScrolled = Math.max(0, $(window).scrollTop());
            var totalDistanceToScroll = $heroImage.height();
            var percentComplete = Math.min(distanceScrolled / totalDistanceToScroll, 1);

            /* Use percentComplete to determine how much we translate */
            var translateY = (percentComplete * 100 * FACTOR);

            /* Apply the transform */
            $heroImage.css({ 'transform': 'translateY(' + translateY + '%)' });

            /**********************
             * Pinning the navbar *
             **********************/

            var $navbar = $('nav');
            var $navbarWrapper = $('.navbar-wrapper')

            /* navbarWrapper never moves, so it's a good pinPoint */
            var pinPoint = $navbarWrapper.offset().top;

            /* add or remove the 'pinned' class depending on what side of the pin
             * point we are.
             */
            if (distanceScrolled >= pinPoint) {
                $navbar.addClass('pinned');
            } else {
                $navbar.removeClass('pinned')
            }
        });

        /*************
         * Scroll to *
         *************/

        $('a[href*="#"]').click(function (e) {
            e.preventDefault();
            var $target = $($(this).attr('href'));
            var scrollTop = $target.offset().top;
            $('html, body').animate({ 'scrollTop': scrollTop }, 500);
        });

    });
</script>



    <style>

   
.hero-image {
top: -20rem;
bottom: -20rem;
width: 100%;
/* background-image: url(http://www.howlatthemoon.com/wp-content/uploads/2015/09/nyc-skyline.jpg); */
background-image:
url(https://th.bing.com/th/id/R.9601f08ab37efd51165a8c5e1443b8c0?rik=KxyOD1%2fWdo2Jww&riu=http%3a%2f%2fbuzzsouthafrica.com%2fwp-content%2fuploads%2fWedding-Decor.jpg&ehk=KgvSwicyflYB3sDr6C%2b%2bOngRTVtWvBr3cURGTXaqeyI%3d&risl=&pid=ImgRaw&r=0);
background-repeat: no-repeat;
background-size: cover;
background-position: center center;
position: absolute;
z-index: 1;
}

.hero h1 {
position: relative;
font-style: DancingScript;
text-align: center;
color: white;
padding-top: 10rem;
z-index: 2;
}

.navbar-wrapper {
height: 3rem;
}

nav.pinned {
position: fixed;
top: 0;
background-color: #f5f5f5;
transition: 0.2s ease background-color;
-webkit-transition: 0.2s ease background-color;

}

/* Eric Meyer's Reset CSS v2.0 - http://cssreset.com */
html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
border: 0;
font-size: 100%;
font: inherit;
vertical-align: baseline;
margin: 0;
padding: 0
}

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
display: block
}

body {
line-height: 1
}

ol,
ul {
list-style: none
}

blockquote,
q {
quotes: none
}

blockquote:before,
blockquote:after,
q:before,
q:after {
content: none
}

table {
border-collapse: collapse;
border-spacing: 0
}

/* Default header styles */
h1,
h2,
h3,
h4,
h5,
h6 {
font-family: "Helvetica Neue", Helvetica, Roboto, Arial, sans-serif;
font-weight: 300;
color: #222222;
line-height: 1.4;
}

h1 {
font-size: 2.75rem;
}

h2 {
font-size: 1.6875rem;
}

h3 {
font-size: 1.375rem;
}

h4 {
font-size: 1.125rem;
}

h5 {
font-size: 1.125rem;
}

h6 {
font-size: 1rem;
}


body {
background-image: url('img_girl.jpg');
}

/* Base element styles */
body,
html {
width: 100%;
height: 100%;
font-family: "Helvetica Neue", Helvetica, Roboto, Arial, sans-serif;
font-size: 16px;
color: #222222;
}

a,
a:hover {
color: inherit;
text-decoration: none;
}

ul {
margin: 2rem 0;
list-style: disc;
padding-left: 2rem;
}

ul li {
padding: 0.5rem 0;
}

p {
margin: 1rem 0;
line-height: 1.8;
}

.content {
max-width: 60rem;
margin: 0 auto;
width: 100%;
}

.hero {
position: relative;
overflow: hidden;
height: 30rem;
}

section {
padding: 6rem 0 3rem;
}

footer {
margin-top: 4rem;
padding: 5rem;
background-color: #222;
color: rgb(255, 255, 255);
text-align: center;
}

footer p {
margin: 0;
}

/* Navbar Styles */

nav {
height: 3rem;
position: relative;
width: 100%;
}

nav ul {
height: 3rem;
margin: 0;
padding: 0;
display: inline-block;
font-size: 0;
list-style: none;
}

nav ul li {
font-size: 1rem;
padding: 0;
display: inline-block;
}

nav ul li p {
height: 1.5rem;
line-height: 1.5rem;
margin: 0;
padding: 0.75rem 1.5rem;
}

nav ul li:hover {
cursor: pointer;
background-color: #eee;
}

nav ul li.action-item {
color: white;
background-color: #4155E8;
}

nav ul li.action-item:hover {
color: white;
background-color: #3B4CD1;
}

nav ul.right {
float: right;
}
</style>

</head>

<body>
    <div class="hero" id="top">
        <div class="hero-image"></div>
        <h1>DreamMakers Event Planning</h1>
    </div>
    <div class="navbar-wrapper">
        <nav>
            <div class="content">
                <ul>
                    <li class="action-item"><a href="#top">
                            <p>HOME</p>
                        </a></li>
                    <!-- <li>      </li> -->

                    <!-- <li><a href="https://www.w3docs.com/" class="button">Click Here</a></li> -->
                    <!-- <li class="action-item1"><a href="https://www.w3docs.com/">
                                <p>Service</p>
                            </a></li> -->
                    

                    <li><a href="#vision">
                            <p>Vision</p>
                        </a></li>
                    <li><a href="#product">
                            <p>Contact us</p>
                        </a></li>
                    <li><a href="#team">
                            <p>About us</p>
                        </a></li>


                </ul>
                <ul class="right">
                    <li><a href="Userlog.jsp">
                            <p>Log in</p>
                        </a></li>
                    <li class="action-item"><a href="#">
                            <p>Sign up</p>
                        </a></li>
                </ul>
            </div>
        </nav>
    </div>
    <section id="vision">
        <div class="content">
            <h1>We Have a Vision</h1>
            <h2>For a world where users come first</h2>
            <p>Be the best event management company: Strive to be the best event management company in the industry,
                producing
                high-quality events that set the standard for event production and trend for the industry.</p>

        </div>
    </section>
    <section id="product">
        <div class="content">
            <h1>Contact </h1>
            <h2>Contact us</h2>
            <p>Head Office:</p>
            No.25, Wijerama Mawatha, Colombo 07.
            (+94) 11 267 5742
            <p>DreamMakersEventPlanning@gmail.com</p>

            (+94) 11 267 5742

            Branchs:
            0112024103- No 279 Nawala road, Nawala
            0812220242-Kandy City centre
            0315313131- No 89 Negambo road, Negambo
            0382241851- No 125 Mahanama junction,Panadura-

            Hotline:
            
            0777360150 – Senal

            0764922235- Punsara</p>
        </div>
    </section>
    <section id="team">
        <div class="content">
            <h1>About us</h1>
            <h2>About us and our experience</h2>
            <p>was established with the aim of making any dream occasion possible; a reality that exceeds expectations.

                A subsidiary of Lassana Flora founded by Dr.Tom Riddle (MBBS, DIPM, PhD) in 2001, today DreamMakers
                Event Planning caters to
                a spectrum of occasions, servicing clients through our branches based in Colombo 07, Nawala, Negambo,
                Panadura and Kandy
                and Jaffna

                From intimate parties to large scale gatherings, inclusive of local and international conferences and
                weddings – no
                event large or small is beyond the scope of our dedicated team of Event Managers who ensure that every
                little detail is
                taken care of, as our focus has always been ensuring the highest of quality, safety and reliability.</p>
            <p>From the moment the initial briefings are carried out, you can simply sit back relax and count on our
                experienced and
                dedicated team of Event Planners to create a stress free and tailor made event. Our team will take you
                through each
                aspect leading to the event, from deciding on venues and themes to other useful information to provide
                you with a
                comprehensive and customized result that only the best in the island can provide.

                Speak to our experienced, committed and enthusiastic team today regarding your upcoming event!</p>
        </div>
    </section>
    <footer>
        <p><a href="#">Copyright © 2022 DreamMakers Event Planning . All Rights Reserved. Powered By SLT-DIGITAL</a></p>
    </footer>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <!-- User scripts -->
    <script type="text/javascript" src="script.js"></script>
</body>

</html>