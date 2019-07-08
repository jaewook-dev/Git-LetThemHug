<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- 사용할 DB(json) -->
<script src="./db.js"></script>
</head>
<body>

	<form>
		<button type="button" id="addBtn" class="btn btn-dark"> 추가 </button>
	</form>
	<!-- The no Modal -->
	<div class="modal fade" id="noModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">알림!</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body text-center">숫자만 입력하세요</div>

				<!-- Modal footer -->
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>


</body>

<script>
	$('#addBtn').click(function() {
		$('#noModal').modal('show');
	});
</script>
</html>