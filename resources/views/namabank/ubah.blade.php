@extends('layout.dashboard')

@section('title', 'Ubah Nama Bank KPR')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">

<form id="frm_ubah_namabank" name="frm_ubah_namabank">
    <div class="card-body">
        <div class="row">
            <table class="table table-sm">
                <tr>
                    <td style="width: 15%;">Nama Bank KPR</td>
                    <td style="width: 1%;">:</td>
                    <td><input type="text" id="namabank" name="namabank" value="{{$namabank[0]->NamaBank}}" style="width: 35%;"><input type="hidden" id="idbank" name="idbank" value="{{ encrypt($namabank[0]->ID) }}" style="width: 35%;" readonly></td>
                </tr>
            </table>
        </div>
    </div>
</form>
<br />
<br />


<diV class="w3-center" id="simpan">
    <input type="button" id="btn_simpan_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Simpan"
        onclick="fn_ubah_namabank()" />

    <a href="{{ url('/namabank') }}" class="w3-btn w3-round-small w3-red w3-large">Kembali</a>
</diV>

{{-- Form Loading --}}

<div id="_div_loading">
    <img src="{{ asset('image/loading1.gif') }}" title='Loading' style="width: 90%;" />
</div>
{{-- END Form Loading --}}

<link rel="stylesheet" href="{{ asset('/jquery-ui-1.13.3/jquery-ui.css') }}">
<script src="{{ asset('/jquery-ui-1.13.3/jquery-ui.js') }}"></script>

<script>
    $(function() {
        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });

        $('#_div_loading').dialog({
            autoOpen: false,

            height: 350,
            width: 350,
            modal: true,
            resizable: false,
            closeOnEscape: false,
            open: function(event, ui) {
                $(".ui-dialog-titlebar").hide();
                $(".ui-dialog-titlebar-close").hide();
            },
            close: function(event, ui) {
                $(".ui-dialog-titlebar").show();
            }
        });
    });

    function fn_ubah_namabank(){
        var APP_URL = $('meta[name="_base_url"]').attr("content");
        var namabank = $("#namabank").val();
        var idbank = $("#idbank").val();
        if (namabank == "") {
            swal({
                title: "error!",
                text: "Nama Bank KPR masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else{
            $("#_div_loading").dialog("open");
            $.ajax({
                data: {
                    namabank: namabank,
                    idbank: idbank,
                },
                url: APP_URL + "/namabank/edit",
                type: "POST",

                dataType: "json",
                success: function(data) {
                    
                        $("#_div_loading").dialog("close");
                        swal({
                            title: data.judul,
                            text: data.success,
                            type: data.type,
                            timer: 2000,
                            confirmButtonText: "Tutup",
                        });
                        $("#namabank").val("");
                        $("#idbank").val("");
                        window.location.href = APP_URL + "/namabank";
                },
                error: function(data) {
                    console.log("Error:", data);
                },
            });//tutup ajax
        }
    }
</script>
@endsection