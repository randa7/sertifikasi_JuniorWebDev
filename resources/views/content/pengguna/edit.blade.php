@extends('dashboard.global')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"></h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="/pengguna">Data Pengguna</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit Data Pengguna</li>
    </ol>
    </div>
  
<div class="card mb-4">
    <div class="container col-10">
        <br><br>
        <h3 class="card-title text-center">Edit Data Pengguna</h3>
        <form role="form" action="/pengguna/{{$editQ->id}}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <br><br>
                <label for="name">Nama</label>
                <input type="text" class="form-control" id="name" name="name" value="{{ old ('name',$editQ->name)}}"
                    placeholder="Enter Name">
                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email"
                    value="{{ old ('email',$editQ->email)}}" placeholder="writer@arsip.com" required>
                @error('email')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="password">Password Baru</label>
                <input type="password" class="form-control" id="password" name="password"
                    value="{{ old ('password', )}}" >
                @error('password')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="select2SinglePlaceholder">Role</label>
                <select class="select2-single-placeholder form-control" name="role" id="role" >
                  <option value="">Ubah Role</option>
                  <option value="3">Admin</option>
                  <option value="2">User</option>              
                </select>
            </div>
            <!-- /.card-body -->
            
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="/pengguna" type="button" class="btn btn-secondary">Kembali</a>
        <br><br><br>
        </form>
    </div>
</div>


@endsection