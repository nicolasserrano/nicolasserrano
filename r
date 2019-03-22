<!DOCTYPE html>
<html>
  <head>
    <title>Title</title>
    <meta charset="utf-8">
    <style>
      @import url(https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz);
      @import url(https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic);
      @import url(https://fonts.googleapis.com/css?family=Ubuntu+Mono:400,700,400italic);

      body { font-family: 'Droid Serif'; }
      h1, h2, h3 {
        font-family: 'Yanone Kaffeesatz';
        font-weight: normal;
      }
      .remark-code, .remark-inline-code { font-family: 'Ubuntu Mono'; }
    </style>
    <script>
    var slideshow
    function createDocument() {
      var xmlhttp =new XMLHttpRequest();
      xmlhttp.onreadystatechange=function() {
          if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            str =  xmlhttp.responseText;
            str = str.replace(/^#/gm, "---\n#");
            document.getElementById("source").innerHTML = "class: center, middle" + str;
            slideshow = remark.create();
            
            // change target of links
            var links = document.getElementsByTagName('a');
            var len = links.length;
            for(var i=0; i<len; i++) {
               links[i].target = "_blank";
            }
            
            parser = document.createElement('a');
            parser.href = document.baseURI
            initialUrl = parser.protocol + parser.port + "//" + parser.host + parser.pathname.substring(0,parser.pathname.lastIndexOf('/'));
            parser.href=parser.search.substring(1);
            finalUrl   = parser.protocol + parser.port + "//" + parser.host + parser.pathname.substring(0,parser.pathname.lastIndexOf('/'));
            
            //change url of images
            images=document.getElementsByTagName('img');
            for (i=0;i<images.length;i++) {
              el = images[i];
              el.src =el.src.replace('initialUrl','finalUrl')
            }
          }
      }
      var urlSearch = window.location.search.substring(1);
      if (urlSearch == null || urlSearch.length == 0) {
        urlSearch = "https://raw.githubusercontent.com/nicolasserrano/CS/master/JDBC.md";
      }
      xmlhttp.open("GET",urlSearch,true);
      xmlhttp.send();
    }

    </script>
  </head>
  <body>
    <textarea id="source">





    </textarea>
    <script src="remark-latest.min.js">
    </script>
    <script>
      createDocument();
    </script>
  </body>
</html>
