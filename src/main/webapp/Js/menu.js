
/**
 * 
 */


 var itemsInCart = 0;
var subTotal = 0;
const tax = 0.1;	
var totalPrice = 0;


window.onload = function() {
  $('img').addClass('img-responsive');
  
	$('.img-container').append('<button class="btn btn-success btn-add-cart"><span class="glyphicon glyphicon-shopping-cart"></span> to cart</button>');

$('.btn-add-cart').click( (e) => { 
		//animation
		$(e.target).animateCss('pulse');
		// find out which item is clicked
		// if 'span' with cart symbol is clicked, then navigate one level up to the button
		let eventTarget;
		if ($(e.target).is('span')) eventTarget = $(e.target).parent();
			else eventTarget = $(e.target);
		let itemName = eventTarget.parent().parent().find('h2')[0].textContent ;
		let itemPrice = eventTarget.parent().parent().find('p')[1].textContent ;
		addToCart(itemName, itemPrice);
	});

	$('#submit').click( () => {
		formSubmitted();
	});

	setRandomPrices();
}

function setRandomPrices() {
	
	let items = document.querySelectorAll('.item');
	for (let item of items) {
		$(item).find('p')[1].textContent = '$' + (Math.floor(Math.random() * (199 - 0)) + 0) + '.' + (Math.floor(Math.random() * (99 - 10)) + 10);
	}
}

function addToCart(name, price) {
	let priceNumber = parseFloat(price.slice(1));
	if (itemsInCart === 0) $('#cart').text(" ");
	let newDiv = $('<div class="cart-item"></div>');
	newDiv.text(name + ' ... ' + price + ' ');
	newDiv.append('<button class="btn btn-danger btn-xs" onclick="deleteItem(this)">X</button>');
	newDiv.append('<hr>');
	newDiv.attr('name', name);
	newDiv.attr('price', priceNumber);
	$('#cart').append(newDiv);
	newDiv.animateCss('bounceInRight');
	itemsInCart++;
	$('#cartItems').text(itemsInCart);
	subTotal += priceNumber;
	updatePrice();
}

function deleteItem(e) {
	let price = $(e.parentElement).attr('price');
	subTotal -= price;
	$(e.parentElement).animateCss('bounceOutRight');
	$(e.parentElement).remove();
	itemsInCart--;
	$('#cartItems').text(itemsInCart);
	updatePrice();
	cartLonelyText();
}

function cartLonelyText() {
	if (itemsInCart === 0) 
		$('#cart').append('So lonely here, add something');
}

function updatePrice() {
	$('#prices').empty();
	if (itemsInCart === 0) return;
	let newDiv = $('<div></div>');
	newDiv.append('<strong>Subtotal: $' + subTotal.toFixed(2) + '<br>');
	newDiv.append('<strong>Tax: ' + tax * 100 + '%<br>');
	newDiv.append('<strong>Total Price: $' + (subTotal + (subTotal * tax)).toFixed(2) + '</strong>');

	newDiv.append('<button class="btn btn-info btn-block" onclick="openModal()">Continue</button>');

	$('#prices').append(newDiv);
	newDiv.animateCss('bounceInRight');
}


function cartToString() {
	let itemsString = "<small><p><strong>Your order:</strong><br>";
	let cartItems = document.querySelectorAll('.cart-item');
	for (let item of cartItems) {
		itemsString = itemsString + item.getAttribute('name') + " .. $" + item.getAttribute('price') + "<br>";
		};
	itemsString += '</p><p>Subtotal: $' + subTotal.toFixed(2) + '<br>';
	itemsString += 'Tax: ' + tax * 100 + '%<br>'
	itemsString += 'Total price with tax: <mark><strong>$' + (subTotal + (subTotal * tax)).toFixed(2) + '</strong></mark></p></small>';
	return itemsString;
}

function openModal() {
	$('#cartContentsModal').html(cartToString());
	$('#myModal').modal('show');
}


function formSubmitted() {
	if (!checkEmptyFields()) {		// if the fields arent empty
		sweetAlert("Thanks!", "Thanks for your order! We will contact you for more information", "success");
	} else { return; }
	// clear cart and do other cleaning if order is OK
	$('#myModal').modal('hide');
	totalPrice = 0; subTotal = 0; itemsInCart = 0;
	$('#cart').empty();
	$('#prices').empty();
	$('#cartItems').text(itemsInCart);
	cartLonelyText();
}

function checkEmptyFields() {
	let somethingEmpty = false;
  
	if ( !$.trim( $('#formName').val() ).length) { 
		$('#formName').animateCss('animated jello');
		somethingEmpty = true;
	}

	if ( !$.trim( $('#formAddress').val() ).length) { 
		$('#formAddress').animateCss('animated jello');
		somethingEmpty = true;
	}

	return somethingEmpty;
}

$.fn.extend({
//		https://github.com/daneden/animate.css
    animateCss: function (animationName) {
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass('animated ' + animationName);
        });
        return this;
    }
});

var paymentForm = $('form');

/**
* Focus in form when clicked on label
*/

paymentForm.find('label').on('click tap', function(){
  $(this).siblings('input').focus();
})

/**
 * Flip card an highlight focused field on card
 */
paymentForm.find('input').on('focus', function(){

    //flip to the correct side of the card
    var side = $(this).attr('data-side');
    var card = $('.reference-card');

   (side !== 'back') ? card.removeClass('flipped') : card.addClass('flipped');

   //focus field on the card
   var field = $(this).attr('data-focusable');
   var focusables = card.find('.focusable');
   focusables.removeClass('focused');
   card.find('.' + field + '.focusable').addClass('focused');

})

/**
 * Update info on the card - card number
 */
paymentForm.find('input[name="cardnumber"]').on('keyup', function(){
    var value = $(this).val();
    var cardNumber = $('.reference-card .card-number');
  
      //add filled class if value exists
   if(value.length > 0){
     $(this).addClass('filled');
   }

    //remove previous value
    cardNumber.find('div').remove();

    //split value in groups of four
    for(var i = 0; i<4; i++){
        var part = '<div>{{number}}</div>';
        var number = value.slice(4 * i, (4 * i) + 4);
        part = part.replace('{{number}}', number);
        cardNumber.append(part);
    }

    var icon = $('.card-icon');



    icon.attr('class', 'card-icon fa ' + getCardIcon(value).icon);



})

/**
 * Update info on the card - all others
 */

paymentForm.find('input').not('input[name="cardnumber"]').on('keyup', function(){
    var value = $(this).val();
  
      //add filled class if value exists
   if(value.length > 0){
     $(this).addClass('filled');
   }
  
    var fieldOnCard = $(this).attr('data-focusable');

    $('.focusable.' + fieldOnCard).text(value);
})

function getCardIcon(number){
    var types = [
            {name: "visa", icon:"fa-cc-visa", re: /^4[0-9]{6,}$/},
            {name: "mastercard", icon:"fa-cc-mastercard", re: /^5[1-5][0-9]{5,}|222[1-9][0-9]{3,}|22[3-9][0-9]{4,}|2[3-6][0-9]{5,}|27[01][0-9]{4,}|2720[0-9]{3,}$/},
            {name: "amex", icon:"fa-cc-amex", re: /^3[47][0-9]{5,}$/},
            {name: "diners", icon:"fa-cc-diners-club", re: /^3(?:0[0-5]|[68][0-9])[0-9]{4,}$/},
            {name: "discover", icon:"fa-cc-discover", re: /^6(?:011|5[0-9]{2})[0-9]{3,}$/},
            {name: "jcb", icon:"fa-cc-jcb", re: /^(?:2131|1800|35[0-9]{3})[0-9]{3,}$/}
        ];

    var type = {name: "general", icon:"fa-credit-card"};

    $.each(types, function(i, v){
        if(v.re.test(number)){
            type = v;
            return false;
        }
    })

    return type;
}
