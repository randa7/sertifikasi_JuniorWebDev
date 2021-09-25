<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="{{ asset('homepage/style.css') }}"> />
   
    <link href="{{asset('landing/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  
    <title>Web Event</title>


  

    <!--My Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
      body{
          font-family: 'poppins',sans-serif;
        }
  
        .navbar{
          background-color:#383950;
          font-size: 20px;
          font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
          color:white;
          
        }
  
  
        .navbar ul{
          color:white;
          
        }
  
  
        .navbar li{
          padding: 5px;
        }
        .footer {
        background: #383950;
        height: auto;
        padding-bottom: 30px;
        position: relative;
        width: 100%;
        border-bottom: 1px solid #CCCCCC;
        border-top: 1px solid #DDDDDD;
        margin-top: 250px;
    
      }
      .footer p {
          margin: 0;
      }
      .footer img {
          max-width: 100%;
      }
      .footer h3 {
          color: white;
          font-size: 18px;
          font-weight: 400;
          line-height: 27px;
          padding: 40px 0 0px;
          text-transform: uppercase;
      margin-bottom: 15px;
      }
  
      .footer h4 {
          color: white;
          font-size: 2em;
          font-weight: 600;
          line-height: 38px;
          padding: 40px 0 10px;
          font-family: cursive;
      font-weight: lighter;
      
      }
  
      .footer h6{
      color: white;
      }
  
      .footer ul {
          font-size: 13px;
          list-style-type: none;
          margin-left: 0;
          padding-left: 0;
          margin-top: 0px;
          color: #7F8C8D;
      padding: 0 0 8px 0;
      }
  
      .email{
      border-bottom: 3px solid #fff;
      }
      .footer ul li a {
          padding: 0 0 12px 0;
          display: block;
      }
      .footer a {
          color: white;
      font-weight: lighter;
      }
  
      .footer p {
          color: white;
      font-weight: lighter;
      }
  
      .footer a:hover {
          text-decoration:none;
      font-weight: bold;
      }
      .supportLi h4 {
          font-size: 20px;
          font-weight: lighter;
          line-height: normal;
          margin-bottom: 0 !important;
          padding-bottom: 0;
      }
  
      .bg-gray {
          background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
          box-shadow: 0 1px 0 #B4B3B3;
      }
  
      .footer a {
          color: #78828D
      }
  
      .footer-bottom {
          border-top: 1px solid #DDDDDD;
      }
  
      .footer-bottom p.pull-left {
          padding-top: 0px;
      font-size: 0.75em
      }
      .container-fluid{
      margin-top: 0px;
      margin-bottom: 0px;
      padding-left: 60px;
      }
  
      .form-group{
        margin-top: 70px;
      }
      .right-side-title{
        margin-top: 70px;
      }
  
      .container{
  margin-top: 100px;
  margin-bottom:100px;
  }
  
  
  
  
  
  .popular .get-started{
    background: #d9d9d9;
    font-family:'Poppins', sans-serif;
    color: #fff;
    border-radius: 40px;
    margin: 0 0px;
    padding: 10px 25px;
    width:125px;
    margin-bottom: 20px;
    margin-top: 40px;
  }
  
  .navbar{
    background-color:#383950;
    font-size: 15px;
    font-family:'Poppins', sans-serif;
    color: #fff;
    margin-bottom: 100px;
  }
  .navbar ul{
    color:white;
  }
  .navbar ul li a{
    color: #fff;
  }
  
  .jombotron.head{
    margin-top: 100px;
    margin-bottom: 100px;
  }
  .p{
    font-family: 'Poppins', sans-serif
  }
  
  .h2 {
    font-family: 'Poppins', sans-serif;
    color: blueviolet;
    padding-right: 50px;
  }
  
  section .container{
    position:relative;
    min-width: 600px;
    min-height: 300px;
    display: flex;
    z-index: 1000;
  }
  .post{
    background-color:#d3d2e7;
    margin-bottom: 100px;
    height: 600px;
  }
  
  section .container .list-image {
    position: absolute;
    left: -30px;
    top: 180px;
    width: 380px;
    height: calc(100% - 70px);
    background-color:white;
    z-index: 1;
    padding: 0px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    box-shadow: 20px 20px 20px rgba(0, 0, 0, 2);
    image-orientation: from-image;
    border-image-width: auto;
    list-style-image: radial-gradient(100);
  }
  
  .popular{
    background-color:white;
    position:absolute;
    width: 1000px;
    height: 400px;
    margin-top: 120px;
    margin-left: 130px;
    padding-left: 240px;
    flex-direction: column;
    justify-content: space-between;
    box-shadow: 20px 20px 20px rgba(0, 0, 0, 2);
    image-orientation: from-image;
    border-image-width: auto;
  }
  .popular .post-meta{
    margin-top: 30px;
    margin-bottom: 10px;
  }
  
  .cari{
    size: 5px;
    padding: -20px;
  }
  /*--------------------------------------------------------------
  # Services
  --------------------------------------------------------------*/
  .services .icon-box {
    padding: 50px 20px;
    margin-top: 35px;
    margin-bottom: 25px;
    text-align: center;
    border: 1px solid #ebe6e4;
    height: 200px;
    position: relative;
    background: #faf9f8;
  }
  
  .services .icon {
    position: absolute;
    top: -36px;
    left: calc(50% - 36px);
    transition: 0.2s;
    border-radius: 50%;
    border: 6px solid #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    text-align: center;
    width: 72px;
    height: 72px;
    background: #f03c02;
  }
  
  .services .icon i {
    color: #fff;
    font-size: 24px;
  }
  
  .services .title {
    font-weight: 700;
    margin-bottom: 15px;
    font-size: 18px;
    text-transform: uppercase;
  }
  
  .services .title a {
    color: #343a40;
  }
  
  .services .icon-box:hover .icon {
    background: #fff;
    border: 2px solid #f03c02;
  }
  
  .services .icon-box:hover .icon i {
    color: #f03c02;
  }
  
  .services .icon-box:hover .title a {
    color: #f03c02;
  }
  
  .services .description {
    line-height: 24px;
    font-size: 14px;
  }

  .cari{
    margin-top: 7px;
  }

  .mg-2{
    margin-top: 5%;
  }
  @media (max-width: 575.98px) { 

    .spasi{
        margin-top: 5%;
    }

    .pos{
        margin-top: 15%;
    }
  }
  </style>

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
      <div id=judul>
        <a class="navbar-brand" href="{{ url('/') }}">
          <img src=""/>Web Event</a>
      </div>

        
        <ul class="navbar-nav ml-auto">
          <li class="btn btn-info tombol2"><a href="#">Home</a></li>
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
    </nav>

      


    <div class="container postingan">
      <br><br>
        <h1 class="pos" style="text-align: center">Event</h1>
        <div class="rectangle"></div>
        <br><br>
  
          <div class="mt-3 row posts" id="posts">
            @forelse($events as $key => $event)
              <div class="col-sm-4 mg-2">
                  <div class="card tiap spasi">
                      <img class="gambar_post center"  style=" height:300px" src="{{asset('landing/assets/img/eventbg.jpg')}}" alt="gambar">
                      <div class="card-body text">
                          <h5 class="card-title judul_post">{{$event->nama}}</h5>
                          <h6 class="card-subtitle mb-2 text-muted">Informasi : {{$event->informasi}}</h6>
                          <h6 class="card-subtitle mb-2 text-muted"><span class="blog-date">Tanggal Event : {{$event->tanggal}}</span></h6>

                          <a href="/events/{{$event->id}}/registrasi" class="card-link">Daftar</a>
                      </div>
                  </div>
              </div>
              
              @empty

              @endforelse
          </div>
      </div>
     
      @include('sweetalert::alert')

  </body>
</html>






