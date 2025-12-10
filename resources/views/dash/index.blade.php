@extends('layout.dashboard')

@section('title','')

@section('content')
    
@endsection

@section('footer')
<link rel="stylesheet" href="{{ asset('/css/highcharts.css') }}">
<script src="{{ asset('/js/highcharts.js') }}"></script>
<script src="{{ asset('/js/exporting.js') }}"></script>
<script src="{{ asset('/js//export-data.js') }}"></script>
<script src="{{ asset('/js/accessibility.js') }}"></script>

@stop