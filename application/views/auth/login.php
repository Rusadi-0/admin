<?= $this->session->flashdata('message'); ?>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="post" action="<?= base_url('auth'); ?>">
					<span class="login100-form-title p-b-26">
					    <svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" fill="currentColor" class="bi bi-person-fill-lock" viewBox="0 0 16 16">
  <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5v-1a1.9 1.9 0 0 1 .01-.2 4.49 4.49 0 0 1 1.534-3.693C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm7 0a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2Zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1Z"/>
</svg>
					    <h5>TKNoor</h5>
						<!--<p style="font-size: 12px;"><u>Toko Noor</u></p>-->
					</span>
					<br>
					<!-- <span class="login100-form-title p-b-26">
						SIMAS
						<p style="font-size: 15px;"><b>S</b>istem <b>I</b>nformasi <b>M</b>anajemen <b>A</b>genda <b>S</b>urat</p>
					</span> -->
					<!-- <span class="login100-form-title">
						<img width="50px" src="<?= base_url('assets/images/')?>email.png" alt="">
					</span> -->

					<div class="wrap-input100 validate-input" data-validate = "Valid : name@mail.com">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Masukan password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="submit" class="login100-form-btn">
							    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="12" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
</svg>
							log In
							</button>
						</div>
					</div>

					<!-- <div class="text-center p-t-115">
						<span class="txt1">
							Lupa Password? 
						</span>

						<a class="txt2" href="<?= base_url('auth/forgotPassword')?>">
							<u>Reset</u>
						</a>
					</div> -->
				</form>
				<br>
			</div>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>