var productImage = document.getElementById("productImage");
var smallImg = document.getElementsByClassName("smallImg");

smallImg[0].onclick = function() {
    productImage.src = smallImg[0].src;
}

smallImg[1].onclick = function() {
    productImage.src = smallImg[1].src;
}

smallImg[2].onclick = function() {
    productImage.src = smallImg[2].src;
}

smallImg[3].onclick = function() {
    productImage.src = smallImg[3].src;
}

