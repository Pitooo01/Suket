<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Dashboard SUKET</title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="{{ asset('/css/sweetalert.css') }}">
	<!-- SweetAlert -->
	<script src="{{ asset('/js/sweetalert.min.js') }}"></script>
	<script>
		// Function to close the tab after a delay
		function autoCloseTab(delay) {
			setTimeout(() => {
				// AJAX request can go here if needed
				console.log("Performing AJAX request before closing...");

				// After AJAX completes, close the tab
				window.close();
			}, delay);
		}

		// Run autoCloseTab function on page load with a delay of 5000 ms (5 seconds)
		window.onload = () => autoCloseTab(5000);
	</script>
</head>

<body>
	@include('sweet::alert')
	<script>
		$(function() {
			$('.select2').select2()
			//Initialize Select2 Elements
			$('.select2bs4').select2({
				theme: 'bootstrap4'
			})
		});
	</script>
</body>

</html>