$(document).ready(function(){
	$(".btn-send").on("click",function(){

		var newPost = {
			comment: $(this).siblings(".comment-field").val(),
			user:  $(this).siblings(".user-field").val(), 
			city:   $(this).siblings(".city-field").val()
		}

		currentChain = $(this).siblings(".city-field").attr("name")
		console.log(newPost);

		$.ajax({
			type: "POST",
			url: "http://localhost:3000/chains/"+currentChain+"/userposts",
			data: newPost,
			success: function(response){console.log("success: "+ response)},
      error: function(response){console.log("error: " + response)},
      dataType: "json"
		})
	});
})



