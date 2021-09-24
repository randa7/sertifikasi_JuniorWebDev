<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{asset('assets/img/prov.png')}}" rel="icon">
    


    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/ruang-admin.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/fontawesome-free/css/all.min.css') }}" rel="stylesheet">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="img/2.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('landing/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/LineIcons.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/owl.carousel.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/owl.theme.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/nivo-lightbox.css')}}">
    <link rel="stylesheet" href="{{asset('landing/css/main.css')}}">    
    <link rel="stylesheet" href="{{asset('landing/css/responsive.css')}}">
    <style>



    </style>
</head>
<body class="bg-gradient-login">
   

        <main class="py-4 margin">

            <br><br><br><br>
            @yield('content')
        </main>
    </div>

    <script src="{{asset('landing/assets/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('landing/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('landing/assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
</body>
</html>
