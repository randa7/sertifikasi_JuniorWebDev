@extends('layouts.app')
<title>Login</title>
@section('content')

    <!-- Login Content -->
    <div class="container-login">
      <div class="row justify-content-center">
        <div class="col-xl-4 col-lg-12 col-md-9">
          <div class="card shadow-sm my-5">
            <div class="card-body p-0">
              <div class="row">
                <div class="col-lg-12">
                  <div class="login-form">
                    <div class="text-center">
                      
                      <h1 class="h4 text-gray-900 mb-4">Login</h1>
                    </div>
                    <form method="POST" action="{{ route('login') }}" class="user">
                        @csrf
                      <div class="form-group">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email" required autocomplete="email" autofocus>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                      </div>
                      <div class="form-group">
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Password">
                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                      </div>
                      <div class="form-group">
                        <div class="custom-control custom-checkbox small" style="line-height: 1.5rem;">
                          <input type="checkbox" class="form-check-input" onclick="Show()">
                   
                            <label class="form-check-label" for="showpass">
                                {{ __('Show Password') }}
                            </label>
                        </div>
                      </div>
                      <div class="form-group">
                        <button type="submit" class="btn btn-primary">
                            {{ __('Login') }}
                        </button>
                      </div>

                    </form>
                    <hr>
                    <div class="text-center">
                      <a href="/register">Create an Account!</a>
                    </div>
                    {{-- <div class="text-center">
                      <a class="font-weight-bold small" href="/register">Create an Account!</a>
                    </div>
                    <div class="text-center"> --}}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script>
      function Show() {
        var x = document.getElementById("password");
        if (x.type === "password") {
          x.type = "text";
        } else {
          x.type = "password";
        }
      }
    </script>
@endsection
