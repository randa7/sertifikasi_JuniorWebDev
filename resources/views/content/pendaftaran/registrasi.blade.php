@extends('layouts.app')
<title>Registrasi Event</title>
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
                      
                      <h1 class="h4 text-gray-900 mb-4">Registrasi Event</h1>
                    </div>
                    <form role="form" action="/" method="POST" class="user">
                        @csrf


                        <div class="form-group">
                            <label for="idevent">ID Event - {{$events->id}}</label>
                            <input type="idevent" class="form-control" id="idevent" name="idevent" value="{{$events->id}}"
                                placeholder="" autocomplete="off" hidden>
                            @error('idevent')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                          </div>


                      <div class="form-group">
                        <label for="name">Nama</label>
                        <input type="nama" class="form-control" id="name" name="name" value="{{ old ('name','')}}"
                            placeholder="nama" autocomplete="off">
                        @error('name')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                      </div>

                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="{{ old ('email','')}}"
                            placeholder="email" autocomplete="off">
                        @error('name')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                      </div>


                      <div class="form-group">
                        <label for="tanggallahir">Tanggal Lahir</label>
                        <input type="date" class="form-control" name="tanggallahir" id="tanggallahir" value="{{ old ('tanggallahir','')}}"  >
                        @error('tanggallahir')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <input type="text" class="form-control" id="alamat" name="alamat" value="{{ old ('alamat','')}}"
                            placeholder="alamat" autocomplete="off">
                        @error('name')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                      </div>



                      <button type="submit" class="btn btn-primary">Daftar</button>
                      <a href="/" type="button" class="btn btn-secondary">Kembali</a>

                    </form>
                    <hr>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


@endsection
