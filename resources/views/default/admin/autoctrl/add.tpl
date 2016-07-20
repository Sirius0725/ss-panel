{include file='admin/main.tpl'}

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			添加下发命令

		</h1>
	</section>
	<section class="content">
		<div class="col-lg-12 col-lg-push-0 col-sm-10 col-sm-push-1">
			<section class="content-inner margin-top-no">

				<div class="card">
					<div class="card-main">
						<div class="card-inner">
							<div class="form-group form-group-label">
								<label class="floating-label" for="content">命令</label>

								<textarea class="form-control" id="content" rows="10"></textarea>
							</div>

						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-main">
						<div class="card-inner">
							<div class="form-group form-group-label">
								<label class="floating-label" for="sign">GPG签名</label>

								<textarea class="form-control" id="sign" rows="10"></textarea>
							</div>

						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-main">
						<div class="card-inner">

							<div class="form-group">
								<div class="row">
									<div class="col-md-10 col-md-push-1">
										<button id="submit" type="submit" class="btn btn-block btn-brand bg-blue waves-attach waves-light">添加</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</section>

		</div>

</section>
</div>







<script>
	$(document).ready(function () {
		function submit() {
			$.ajax({
				type: "POST",
				url: "/admin/autoctrl",
				dataType: "json",
				data: {
					content: $("#content").val(),
					sign: $("#sign").val()
				},
				success: function (data) {
					if (data.ret) {
						$("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href=top.document.referrer", 500);
					} else {
						$("#result").modal();
						$("#msg").html(data.msg);
					}
				},
				error: function (jqXHR) {
					$("#msg-error").hide(10);
					$("#msg-error").show(100);
					$("#msg-error-p").html("发生错误：" + jqXHR.status);


				}
			});
		}

		$("#submit").click(function () {
			submit();
		});
	});
</script>

{include file='admin/footer.tpl'}