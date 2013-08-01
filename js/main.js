window.onload = function () {
  var pres = document.getElementsByTagName("pre");
  var i;
  for(i = 0; i < pres.length; i++) {
    pres[i].className = "prettyprint";
  }
  prettyPrint();
}
