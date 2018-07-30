
function headerbg(){
	var scroll = $(window).scrollTop();  
    if (scroll >= 40) {
        $("header").addClass("header-bg");
    } else {
    	$("header").removeClass("header-bg");
    }
}

$(window).scroll(function() {    
    headerbg();
});


$("#menuShow").on('click', function(e){
    $('#menubox').toggleClass('menu-slide');
});
$("#menuClose").on('click', function(e){
    $('#menubox').toggleClass('menu-slide');
});


$(window).resize(function(){
	if($(window).width()<=1024){
		$(".top-dropdown .dropdown-toggle").removeAttr("data-toggle");
	} else {
		$(".top-dropdown .dropdown-toggle").attr("data-toggle", "dropdown");
	}
});

if($(window).width()<=1024){
	$(".top-dropdown .dropdown-toggle").removeAttr("data-toggle");
} 
else {
	$(".top-dropdown .dropdown-toggle").attr("data-toggle", "dropdown");
}

$("#showUser").on('click', function(e){
    $('.chat-user-box').toggle();
    $(this).children('i.fas').toggleClass('fa-users fa-times')
});

$("#showSearch").on('click', function(e){
    $('.header-search').toggle();
});

$(".security-input").keyup(function () {
    console.log(this.value.length);
    if (this.value.length == this.maxLength) {
      $(this).next('.security-input').focus();
    } else{
      $(this).prev('.security-input').focus();
    }
});

$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});

/* =====Increase Descrese========== */
  $(".inc-btn").click(function(){
    var get_val = parseInt($(this).parent().prev("input.form-control").val());
    get_val = get_val+1;
    $(this).parent().prev("input.form-control").val(get_val)
  });
   
  $(".dec-btn").click(function(){
    var dec_val = parseInt($(this).parent().next("input.form-control").val());
    if(dec_val<=0){
      return false;
    }
    else{
    dec_val=dec_val-1;
       $(this).parent().next("input.form-control").val(dec_val) 
    }
  });
/* =====Increase Descrese End========== */


$(document).ready(function(){
  /* Toggle Header User info Drop Down */
  $(document).on("click", ".user_top_box ", function() {
   $(".user_top_box .dropdown-menu").toggleClass("show");
  });

   $(document).click(function(e) { 
    if(!$(e.target).is(".head-drop-down, .head-drop-down *, .user_top_box, .user_top_box *")) { 
      $(".user_top_box .dropdown-menu").removeClass('show'); 
    } 
  }); 
});

$(document).ready(function(){
  var countDownDate = new Date("Mar 23, 2019 15:37:25").getTime();

  // Update the count down every 1 second
  var countdownfunction = setInterval(function() {
    // Get todays date and time
    var now = new Date().getTime();
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    var getdays = days.toString(10).split('');
    for (var i=0,n=getdays.length; i<n; i++){
      $(".days span").eq(i).text(getdays[i]);

      if(days <= 99){
        $(".days span").eq(0).text('0');
        $(".days span").eq(1).text(getdays[0]);
        $(".days span").eq(2).text(getdays[1]);
      }
      if(days <= 9){
        $(".days span").eq(0).text('0');
        $(".days span").eq(1).text('0');
        $(".days span").eq(2).text(getdays[0]);
      }
    }

    var gethours = hours.toString(10).split('');
    for (var i=0,n=getdays.length; i<n; i++){
      $(".hours span").eq(0).text(gethours[0]);
      $(".hours span").eq(1).text(gethours[1]);
      if(hours <= 9){
        $(".hours span").eq(0).text('0');
        $(".hours span").eq(1).text(gethours[1]);
      }
    }

    var getminutes = minutes.toString(10).split('');
    for (var i=0,n=getminutes.length; i<n; i++){
      $(".minutes span").eq(i).text(getminutes[i]);
      if(minutes <= 9){
        $(".minutes span").eq(0).text('0');
        $(".minutes span").eq(1).text(minutes);
      }
    }

    var getseconds = seconds.toString(10).split('');
    for (var i=0,n=getseconds.length; i<n; i++){
      $(".seconds span").eq(i).text(getseconds[i]);
        if(seconds <= 9){
        $(".seconds span").eq(0).text('0');
        $(".seconds span").eq(1).text(seconds);
      }
    }
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(countdownfunction);
        // document.getElementById("demo").innerHTML = "EXPIRED";
    }
  },1000);
});

