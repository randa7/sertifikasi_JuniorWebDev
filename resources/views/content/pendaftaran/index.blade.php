@extends('dashboard.global')

@section('content')

<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <h1 class="h3 mb-0 text-gray-800"></h1>
  <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Pendaftar</li>
  </ol>
  </div>

<!-- DataTable with Hover -->
<div class="col-lg-12">
    <div class="card mb-4">
      <br><br>
      <h3 class="text-center">Data Pendaftar</h3>
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h3 class="text-center"></h3>
        
      </div>
      <div class="table-responsive p-3">
        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
          <thead class="thead-light">
            <tr>
              <th style="width: 10px">No</th>
              <th>Nama</th>
              <th>Email</th>
              <th>Tanggal Lahir</th>
              <th>Alamat</th>
              <th>ID Event</th>
              
            </tr>
          </thead>
          <tbody>
            @forelse($registrants as $key => $registrant)
            <tr>
              <td>{{ $key + 1 }} </td>
              <td>{{ $registrant->nama }} </td>
              <td>{{ $registrant->email }}</td>
              <td>{{ $registrant->tanggallahir }}</td>
              <td>{{ $registrant->alamat }}</td>
              <td>{{ $registrant->idevent }}</td>

            </tr>
            @empty
            <tr>
               <td colspan="4" align="center">Data Tidak Ditemukan</td>
            </tr>
            @endforelse

          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>



@endsection


@push('scripts')
  <script src="{{asset('assets/vendor/datatables/jquery.dataTables.min.js')}}"></script>
  <script src="{{asset('assets/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
      <!-- Page level custom scripts -->
  <script>
    $(function () {

      $(" #dataTableHover").DataTable(); // ID From dataTable with Hover
    });
  </script>

@endpush