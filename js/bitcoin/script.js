var elem = document.getElementsByClassName('persent_font');
var num = document.getElementsByClassName('persent_number');
var val = elem[0];

for(i = 0; i < elem.length; i++){
    if(num[i].innerHTML < 0){
        elem[i].style.color = "#FF1C45";
    }
}