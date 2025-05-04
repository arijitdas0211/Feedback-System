<form class="row col-5 m-3 px-5 py-3 mx-auto border shadow feedback_box" method="post" action="<%= application.getContextPath() %>/feedback">
	<div class="col-12 mt-3">
		<h3 class="text-center">Feedback Form</h3>
	</div>
	<hr class="w-75 mx-auto" />
	<div class="col-6 my-3">
	  <label for="name" class="form-label">Your Name: </label>
	  <input type="text" class="form-control" id="name" name="name" placeholder="John Doe" />
	</div>
	<div class="col-6 my-3">
	  <label for="phone" class="form-label">Your Phone: </label>
	  <input type="text" class="form-control" id="phone" name="phone" placeholder="9876540123" />
	</div>
	<div class="col-12 mb-3">
	  <label for="email" class="form-label">Your Email: </label>
	  <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" />
	</div>
	<div class="col-12 mb-3">
	  <label for="feedback" class="form-label">Your Feedback: </label>
	  <textarea class="form-control" id="feedback" name="msg" rows="3" placeholder="Your feedback here..." style="resize: none;"></textarea>
	</div>
	<div class="col-12 my-3 d-grid gap-2 col-3 mx-auto w-50">
		<button class="btn btn-light bt-sm shadow-sm">Submit</button>
	</div>
</form>
