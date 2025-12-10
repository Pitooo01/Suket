@extends('layout.dashboard')

@section('title', 'Surat Rekomendasi Pinjaman BPR ABS')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}" />
<meta name="_base_url" content="{{ url('/') }}">

<form id="frm_tambah_suket_kerja" name="frm_tambah_suket_kerja">
    <div class="card-body">
        <div class="row">
            <table class="table table-sm">
                <tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Nomor Surat</td>
				</tr>
                <tr>
                    <td style="width: 15%;">No Surat.</td>
                    <td>:</td>
                    <td><input type="text" id="nosurat" name="nosurat" style="width: 5%;"> / <input type="text"
                            value="RSAB-SDM/" style="border: none;outline: none;width: 8%;"><select
                            id="bulan" name="bulan">
                            <option value="">-- Pilih Bulan --</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>.<input type="text" id="tahun" name="tahun" style="width: 5%;"
                            value="{{ now()->year }}"></td>
                </tr>
                <tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Data Karyawan</td>
				</tr>
                <tr>
                    <td>NIK</td>
                    <td>:</td>
                    <td><input type="text" id="nik" name="nik"></td>
                </tr>
                <tr>
                    <td>Nama</td>
                    <td>:</td>
                    <td><input type="text" id="nama" name="nama" style=" width: 28%;"></td>
                </tr>
                <tr>
                    <td>Tempat/Tgl. Lahir</td>
                    <td>:</td>
                    <td><input type="text" id="tempatlahir" name="tempatlahir" placeholder="Tempat Lahir"
                            style="width: 21%;"> / <input type="date" id="tgllahir" name="tgllahir">
                    </td>
                </tr>
                <tr>
                    <td>Bagian/Jabatan</td>
                    <td>:</td>
                    <td><input type="text" id="bagian" name="bagian" placeholder="Bagian" style="width: 21%;"> /
                        <input type="text" id="jabatan" name="jabatan" placeholder="Jabatan" style="width: 21%;">
                    </td>
                </tr>
                <tr>
                    <td>Status Karyawan</td>
                    <td>:</td>
                    <td><select id="status" name="status">
                            <option value="">-- Pilih Status --</option>
                            <option value="01">Karyawan Tetap</option>
                            <option value="02">Karyawan Kontrak</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Mulai Bekerja</td>
                    <td>:</td>
                    <td><input type="date" id="awalkerja" name="awalkerja" style="width: 21%;"> s/d <input
                            type="date" id="akhirkerja" name="akhirkerja" style="width: 21%;"> &nbsp;&nbsp;
                                <input type="checkbox" id="sekarang" name="sekarang" value="1">
                                <label class="form-check-label" for="exampleCheck1">SEKARANG</label>
                              </td>
                </tr>
                <tr>
                    <td>Alamat E-mail</td>
                    <td>:</td>
                    <td><input type="text" id="email" name="email" style=" width: 45%;"></td>
                </tr>
                <tr>
					<td colspan="3" align="center" style="color:darkcyan;font-weight:bold;background-color:#F0F8FF;">Jumlah Pengajuan</td>
				</tr>
                <tr>
                    <td>Jumlah Pengajuan (Rp.)</td>
                    <td>:</td>
                    <td><input type="text" id="pengajuan" name="pengajuan" placeholder="ex. 40000000"></td>
                </tr>
            </table>


        </div>
    </div>
    <!-- /.card-body -->
</form>
<br />
<br />


<diV class="w3-center" id="simpan">
    <input type="button" id="btn_simpan_data" class="w3-btn w3-round-medium w3-indigo w3-large" value="Simpan"
        onclick="fn_tambah_suket_rekomendasi()" />

    <a href="{{ url('/rekomendasi') }}" class="w3-btn w3-round-small w3-red w3-large">Kembali</a>
</diV>

{{-- Form Loading --}}

<div id="_div_loading">
    <img src="{{ asset('image/loading1.gif') }}" title='Loading' style="width: 90%;" />
</div>
{{-- END Form Loading --}}

<!-- <script src="{{ asset('/jsrizal/jquery-3.7.1.js') }}"></script> -->
<script src="{{ asset('/jssuketbekerja/tambah.js') }}"></script>
<link rel="stylesheet" href="{{ asset('/jquery-ui-1.13.3/jquery-ui.css') }}">
<script src="{{ asset('/jquery-ui-1.13.3/jquery-ui.js') }}"></script>

<script>
    $(function() {
        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });

        //$('#sekarang').prop('checked', true); // ajax checked
        // Saat checkbox diklik
        $('#sekarang').on('change', function() {
            if ($(this).is(':checked')) {
                // Disable input date jika checkbox dicentang
                $('#akhirkerja').prop('disabled', true).val('');
                $('#akhirkerja').hide();
            } else {
                // Enable input date jika checkbox tidak dicentang
                $('#akhirkerja').prop('disabled', false);
                $('#akhirkerja').show();
            }
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

        $("#kirim").hide();
        $("#nosurat").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#bulan").focus();
            }
        });

        $("#bulan").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#tahun").focus();
            }
        });

        $("#tahun").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#nik").focus();
            }
        });
        $("#nik").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#nama").focus();
            }
        });
        $("#nama").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#tempatlahir").focus();
            }
        });
        $("#tempatlahir").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#tgllahir").focus();
            }
        });
        $("#tgllahir").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#bagian").focus();
            }
        });
        $("#bagian").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#jabatan").focus();
            }
        });
        $("#jabatan").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#status").focus();
            }
        });
        $("#status").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#awalkerja").focus();
            }
        });
        $("#awalkerja").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#akhirkerja").focus();
            }
        });
        $("#akhirkerja").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#keperluansurat").focus();
            }
        });
        $("#email").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#pengajuan").focus();
            }
        });
        $("#pengajuan").keydown(function(e) {
            if (e.keyCode == 13) {
                $("#btn_simpan_data").focus();
            }
        });
    });

    function fn_tambah_suket_rekomendasi() {
        // let csrfToken = $('meta[name="csrf-token"]').attr('content');
        var APP_URL = $('meta[name="_base_url"]').attr("content");
        var nosurat = $("#nosurat").val();
        var bulan = $("#bulan").val();
        var tahun = $("#tahun").val();
        var nik = $("#nik").val();
        var nama = $("#nama").val();
        var tempatlahir = $("#tempatlahir").val();
        var tanggallahir = $("#tgllahir").val();
        var bagian = $("#bagian").val();
        var jabatan = $("#jabatan").val();
        var status = $("#status").val();
        var mulaikerja = $("#awalkerja").val();
        var akhirkerja = $("#akhirkerja").val();
        var sekarang = $("#sekarang").is(':checked') ? 1 : 0;
        var email = $("#email ").val();
        var pengajuan = $("#pengajuan ").val();

        
        if (nosurat == "") {
            swal({
                title: "error!",
                text: "No surat masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (bulan == "") {
            swal({
                title: "error!",
                text: "Bulan masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (nik == "") {
            swal({
                title: "error!",
                text: "NIK masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (nama == "") {
            swal({
                title: "error!",
                text: "Nama masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (tempatlahir == "") {
            swal({
                title: "error!",
                text: "Tempat lahir masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (tanggallahir == "") {
            swal({
                title: "error!",
                text: "Tanggal lahir masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (bagian == "") {
            swal({
                title: "error!",
                text: "Bagian masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (jabatan == "") {
            swal({
                title: "error!",
                text: "Jabatan masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (status == "") {
            swal({
                title: "error!",
                text: "Status karyawan masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (mulaikerja == "") {
            swal({
                title: "error!",
                text: "Mulai kerja masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (akhirkerja == "" && sekarang === "0") {
            swal({
                title: "error!",
                text: "Akhir kerja masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else if (email == "") {
            swal({
                title: "error!",
                text: "Email masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        }else if (pengajuan == "") {
            swal({
                title: "error!",
                text: "Jumlah pengajuan masih kosong",
                type: "error",
                timer: 2000,
                confirmButtonText: "Tutup",
            });
        } else {
            $("#_div_loading").dialog("open");
            $.ajax({
                data: {
                    nosurat: nosurat,
                    bulan: bulan,
                    tahun: tahun,
                    nik: nik,
                    nama: nama,
                    tempatlahir: tempatlahir,
                    tanggallahir: tanggallahir,
                    bagian: bagian,
                    jabatan: jabatan,
                    status: status,
                    mulaikerja: mulaikerja,
                    akhirkerja: akhirkerja,
                    sekarang: sekarang,
                    email: email,
                    pengajuan:pengajuan
                },
                url: APP_URL + "/rekomendasi",
                type: "POST",

                dataType: "json",
                success: function(data) {
                    // window.location.href = baseUrl + "/keteranganbekerja";
                    if (data.judul == "error") {
                        $("#_div_loading").dialog("close");
                        swal({
                            title: data.judul,
                            text: data.success,
                            type: data.type,
                            timer: 2000,
                            confirmButtonText: "Tutup",
                        });
                    } else {
                        $("#_div_loading").dialog("close");
                        swal({
                            title: data.judul,
                            text: data.success,
                            type: data.type,
                            timer: 2000,
                            confirmButtonText: "Tutup",
                        });
                        bersihkan();
                    }
                },
                error: function(data) {
                    console.log("Error:", data);
                },
            });
        }
    }

    function bersihkan() {
        $("#nosurat").val("");
        $("#bulan").val("");
        $("#tahun").val("");
        $("#nik").val("");
        $("#nama").val("");
        $("#tempatlahir").val("");
        $("#tgllahir").val("");
        $("#bagian").val("");
        $("#jabatan").val("");
        $("#status").val("");
        $("#awalkerja").val("");
        $("#akhirkerja").val("");
        $("#pengajuan").val("");
        $("#email ").val("");
        $('#sekarang').prop('checked', false); // ajax checked
    }

    function aktif() {
        $("#kirim").hide();
    }
</script>
@endsection