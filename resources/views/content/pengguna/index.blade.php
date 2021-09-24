@extends('dashboard.global')

@section('content')

<div class="d-sm-flex align-items-center justify-content-between mb-4">
  <h1 class="h3 mb-0 text-gray-800"></h1>
  <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="/">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Pengguna</li>
  </ol>
  </div>

<!-- DataTable with Hover -->
<div class="col-lg-12">
    <div class="card mb-4">
      <br><br>
      <h3 class="text-center">Data Pengguna</h3>
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h3 class="text-center"></h3>
        <a href="pengguna/create"
           class="btn btn-primary float-right m"><i class="fas fa-user-plus"></i></a>
      </div>
      <div class="table-responsive p-3">
        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
          <thead class="thead-light">
            <tr>
              <th style="width: 10px">No</th>
              <th>Nama</th>
              <th>Email</th>
              <th>Role</th>
              <th style="width: 40px">Action</th>
            </tr>
          </thead>
          <tbody>
            @forelse($users as $key => $user)
            <tr>
              <td>{{ $key + 1 }} </td>
              <td>{{ $user->name }} </td>
              <td>{{ $user->email }}</td>
              <td>{{ $user->nama }}</td>
              <td style="display: flex;">
                <a href="/pengguna/{{$user->id}}/edit" class="btn btn-warning btn-sm mr-2" title="edit"><i class="fas fa-user-edit"></i></a>
                <form action="/pengguna/{{$user->id}}" method="post">

                  
                <a href="javascript:void(0);" data-toggle="modal" data-target="#hapusModal" class="btn btn-danger btn-sm mr-2" title="Hapus"><i class="fas fa-trash"></i></a>
                </form>
             </td>
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

<div class="modal fade" id="hapusModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabelLogout">Hapus Data</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <p>Yakin akan menghapus data ?</p>
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
      <form action="/pengguna/{{$user->id}}" method="post">
        @csrf
        @method('DELETE')
        <button type="submit" value="delete" class="btn btn-outline-danger " title="Hapus">Hapus</button>
      </form>
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