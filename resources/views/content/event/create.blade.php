@extends('dashboard.global')

@section('content')

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800"></h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item" aria-current="page"><a href="/events">Data Event</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Data Event</li>
    </ol>
    </div>
  

<br>
<div class="card mb-4">
    <div class="container col-md-8">
        <br>
        <h3 class="card-title text-center">Tambah Event</h3>
        <form role="form" action="/events" method="POST">
            @csrf
            <div class="form-group">
                <br><br>
                <label for="nama">Nama</label>
                <input type="text" class="form-control" id="nama" name="name" value="{{ old ('name','')}}"
                    placeholder="Nama Event" autocomplete="off">
                @error('name')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="tanggalevent">Tanggal Event</label>
                <input type="date" class="form-control" name="tanggalevent" id="tanggalevent" value="{{ old ('tanggalevent','')}}"  >
                @error('tanggalevent')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="form-group">
                <label for="pengirim">Informasi</label>
                <input type="text" class="form-control" id="informasi" name="informasi"
                    value="{{ old ('informasi','')}}" placeholder="informasi">
                @error('informasi')
                <div class="alert alert-danger">{{ $message }}</div>
                @enderror
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="/events" type="button" class="btn btn-secondary">Kembali</a>
        <br><br><br>
        </form>
    </div>
</div>

@endsection

@push('scripts')
    <script>

    </script>
@endpush