<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Randa Siagian</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{asset('')}}" rel="icon">
  <link href="{{asset('landing/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('landing/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('landing/assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
  <link href="{{asset('landing/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('landing/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="{{asset('landing/assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
  <link href="{{asset('landing/assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{asset('landing/assets/css/style.css')}}" rel="stylesheet">

  <style>
    .nama{
      color: coral;
    }

    .men{
      color: black;
    }

    .mg-up{
      margin-top: 4%;
      margin-left: 4%;
    }
  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="/">Web Sertifikasi <span class="nama">Randa Siagian</span></a></h1>
    
      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#hero">Home</a></li>


          @guest
          @if (Route::has('login'))
              <li>
                  <a  href="{{ route('login') }}">{{ __('Login') }}</a>
 
              </li>
              
          @endif

          @if (Route::has('register'))
              {{-- <li>
                  <a href="{{ route('register') }}">{{ __('Register') }}</a>
              </li> --}}
          @endif

          @else
          <li><a href="{{route('dashboard')}}">Dashboard</a></li>
              
              <li>                  <a class="" href="{{ route('logout') }}"
                onclick="event.preventDefault();
                              document.getElementById('logout-form').submit();">
                  {{ __('Logout') }}
              </a>
              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="">
                @csrf
            </form>
            </li>
          @endguest
        </ul>
        
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">

      <div class="row">
        @forelse($events as $key => $event)
          <div class="col-md-4 col-lg-3 d-flex align-items-stretch mg-up card">
            <div class="">
              <div class="icon"><img src="{{asset('landing/assets/img/eventbg.jpg')}}" width="100%" height="150"></div>
              <br>
              <h4 class="title"><a href="">{{$event->nama}}</a></h4>
              
              <p class="description">Informasi Terkait : {{$event->informasi}}</p>
              <p class="description">Tanggal Pelaksanaan : {{$event->tanggal}}</p><br>
              <a href="/events/{{$event->id}}/registrasi" class="btn btn-primary btn-sm mr-2" title="daftar">Daftar</a>
           
            <br>
            <br>
            </div>
          </div>
        @empty

        @endforelse


    </div>
  </section><!-- End Hero -->

  <main id="main">










  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

  

    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright Abe Randa Putra. All Rights Reserved
        </div>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{asset('landing/assets/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/venobox/venobox.min.js')}}"></script>
  <script src="{{asset('landing/assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('landing/assets/js/main.js')}}"></script>


@include('sweetalert::alert')

</body>

</html>
