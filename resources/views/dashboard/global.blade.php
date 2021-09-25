
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="{{asset('assets/img/prov.png')}}" rel="icon">
    <title>Dashboard</title>
    <link href="{{asset('assets/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('assets/css/ruang-admin.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">
    <link href="{{asset('assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css')}}" rel="stylesheet">

</head>

    <body id="page-top">
        <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
            <div class="sidebar-brand-icon">
                {{-- <img src="{{asset('assets/img/prov.png')}}"> --}}
            </div>
            <div class="sidebar-brand-text mx-3">Dashboard</div>
            </a>
            <hr class="sidebar-divider my-0">
            <li class="nav-item active">
            <a class="nav-link" href="/dashboard">
                <i class="fas fa-home"></i>
                <span>Dashboard</span></a>
            </li>
            <hr class="sidebar-divider">
            <div class="sidebar-heading">
            Features
            </div>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <i class="fas fa-user"></i>
                    <span>Profile</span>
                </a>
            </li>
            

            <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTable" aria-expanded="true"
                aria-controls="collapseTable">
                <i class="fas fa-inbox"></i>
                <span>Konten</span>
            </a>
            <div id="collapseTable" class="collapse" aria-labelledby="headingTable" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Event</h6>
                <a class="collapse-item" href="/pendaftaran">Pendaftaran</a>
                <a class="collapse-item" href="/events">Event</a>
                </div>
            </div>
            </li>
            

            @if ($role->name == 'admin')
                <li class="nav-item">
                <a class="nav-link" href="/pengguna">
                    <i class="fas fa-users"></i>
                    <span>Data Pengguna</span>
                </a>
                </li>
            @else 
            @endif

 
        </ul>
        <!-- Sidebar -->
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
            <!-- TopBar -->
            <nav class="navbar navbar-expand navbar-light bg-navbar topbar mb-4 static-top">
                <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>
                <ul class="navbar-nav ml-auto">
                
               
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    @if(Auth::user()->image == NULL)
                    <img class="img-profile rounded-circle" src="{{asset('assets/img/boy.png')}}" style="max-width: 60px">
                    @else
                    <img class="img-profile rounded-circle" src="{{ Storage::url(Auth::user()->image) }}" style="max-width: 60px">
                    @endif
                    
                    <span class="ml-2 d-none d-lg-inline text-white small">{{ Auth::user()->name }}</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        Profile
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="javascript:void(0);" data-toggle="modal" data-target="#logoutModal">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        Logout
                      </a>
                    </div>
                </li>
                </ul>
            </nav>
            <!-- Topbar -->

          <!-- Modal Logout -->
          <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabelLogout">Logout !</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Apakah Anda Yakin Ingin Logout?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                  <a href="{{ route('logout') }}" class="btn btn-primary" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" >{{ __('Logout') }}</a>
                </div>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
              </div>
            </div>
          </div>


            <!-- Container Fluid-->
            <div class="container-fluid" id="container-wrapper">
 
                

                    @yield('content')
                        
                
            <!---Container Fluid-->
            </div>

            <!-- Footer -->
        </div>
        </div>

        <!-- Scroll to top -->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        @include('sweetalert::alert')
        <script src="{{asset('assets/vendor/jquery/jquery.min.js')}}"></script>
        <script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
        <script src="{{asset('assets/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
        <script src="{{asset('assets/js/ruang-admin.min.js')}}"></script>
        
        @stack('scripts')
    </body>

</html>