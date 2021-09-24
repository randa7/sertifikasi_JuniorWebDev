@extends('dashboard.global')

@section('content')

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"></h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="/pengguna">Data Pengguna</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Data Pengguna</li>
    </ol>
    </div>
  

<br>
<div class="card mb-4">
    <div class="container col-md-8">
        <br>
        <h3 class="card-title text-center">Tambah Pengguna</h3>
        <form role="form" action="/pengguna" method="POST">
            @csrf
            <div class="form-group">
                <br><br>
                <label for="name">Nama</label>
                <input type="text" class="form-control" id="name" name="name" value="{{ old ('name','')}}"
                    placeholder="arsip surat" autocomplete="off">
                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
				
				
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ old ('email','')}}"
                    placeholder="user@arsip.com" autocomplete="off">
                @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-group">
                <label for="cat_description">Password</label>
                <input type="password" class="form-control" id="password" name="password"
                    value="{{ old ('password','')}}" placeholder="Enter Password" minlength="7">
                @error('password')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="select2SinglePlaceholder">Role</label>
                <select class="select2-single-placeholder form-control" name="role" id="role" value="{{ old ('role','')}}">
                  <option value="admin">Admin</option>
                  <option value="user">User</option>              
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="/pengguna" type="button" class="btn btn-secondary">Kembali</a>
        <br><br><br>
        </form>
    </div>
</div>

@endsection

@push('scripts')
    <script>

    </script>
@endpush