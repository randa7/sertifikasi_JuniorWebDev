@extends('dashboard.global')


@section('content')

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
    </ol>
    </div>
<br><br>
    <h1 class="mx-auto" style="width: 45%;">Selamat Datang, {{ Auth::user()->name }} </h1>


@endsection