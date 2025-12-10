$(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });
});

//function tampil alasan
function tampilpengalamanall() {
    var APP_URL = $('meta[name="_base_url"]').attr("content");

    $("#tampil_pengalaman").DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
            url: APP_URL + "/tampilpengalaman",
            method: "get",
        },

        columns: [
            { data: "DT_RowIndex", orderable: false, searchable: false },
            { data: "SuketPengalamanID" },
            { data: "NamaKaryawan" },
            { data: "Bagian" },
            { data: "TanggalMasuk" },
            { data: "TanggalKeluar" },
            { data: "action", orderable: false, searchable: false },
        ],
    });
}

function Cari_karyawan() {
    var APP_URL = $('meta[name="_base_url"]').attr("content");
    var awal = $("#awal").val();
    var akhir = $("#akhir").val();
    var nik = $("#nik").val();
    var nama = $("#nama").val();
    var status = $("#status").val();

    if (awal > akhir) {
        swal({
            title: "error!",
            text: "Urutan Pencarian Tanggal Salah",
            type: "error",
            timer: 2000,
            confirmButtonText: "Tutup",
        });
    } else if (
        awal == "" &&
        akhir == "" &&
        nik == "" &&
        nama == "" &&
        status == ""
    ) {
        swal({
            title: "error!",
            text: "Pencarian Masih Kosong",
            type: "error",
            timer: 2000,
            confirmButtonText: "Tutup",
        });
    } else {
        $.ajax({
            data: {
                awal: awal,
                akhir: akhir,
                nik: nik,
                nama: nama,
                status: status,
            },
            url: APP_URL + "/tampilpengalaman",
            type: "GET",
            dataType: "json",
            success: function (data) {
                $("#tampil_pengalaman").html(data.html);
            },
            error: function (data) {
                console.log("Error:", data);
            },
        });
    }
}

function Bersihkan() {
    $("#awal").val("");
    $("#akhir").val("");
    $("#nik").val("");
    $("#nama").val("");
    $("#status").val("");
    $("#tampil_pengalaman").html("Kosong");
}

function fn_ubah_pengalaman($id) {
    var APP_URL = $('meta[name="_base_url"]').attr("content");
    var nomorsurat = $("#nomorsurat", "#frm_ubah_pengalaman").val();
    var nama = $("#namakaryawan", "#frm_ubah_pengalaman").val();
    var bagian = $("#bagian", "#frm_ubah_pengalaman").val();
    var tempatlahir = $("#tempatlahir", "#frm_ubah_pengalaman").val();
    var tgllahir = $("#tanggallahir", "#frm_ubah_pengalaman").val();
    var statuspegawaiubah = $(
        "#statuspegawaiubah",
        "#frm_ubah_pengalaman"
    ).val();
    var tglmulaikerja = $("#tglmulaikerja", "#frm_ubah_pengalaman").val();
    var tglakhirkerja = $("#tglakhirkerja", "#frm_ubah_pengalaman").val();
    var jabatanakhir = $("#jabatanakhir", "#frm_ubah_pengalaman").val();
    var jabatanakhireng = $("#jabatanakhireng", "#frm_ubah_pengalaman").val();
    var email = $("#email", "#frm_ubah_pengalaman").val();

    $.ajax({
        data: {
            nomorsurat: nomorsurat,
            nama: nama,
            bagian: bagian,
            tempatlahir: tempatlahir,
            tgllahir: tgllahir,
            statuspegawaiubah: statuspegawaiubah,
            tglmulaikerja: tglmulaikerja,
            tglakhirkerja: tglakhirkerja,
            jabatanakhir: jabatanakhir,
            jabatanakhireng: jabatanakhireng,
            email: email,
        },
        url: APP_URL + "/pengalaman/ubahpengalaman",
        type: "PATCH",
        dataType: "json",
        success: function (data) {
            alert(data.success);
            window.location.href = APP_URL + "/pengalamankerja";
        },
        error: function (data) {
            console.log("Error:", data);
        },
    });
}

function fn_tambah_pengalaman() {
    var APP_URL = $('meta[name="_base_url"]').attr("content");
    var nosurat = $("#nosurat").val();
    var bulan = $("#bulan").val();
    var tahun = $("#tahun").val();
    var nik = $("#nikkaryawan", "#frm_tambah_pengalaman").val();
    var nama = $("#namakaryawan", "#frm_tambah_pengalaman").val();
    var bagian = $("#bagian", "#frm_tambah_pengalaman").val();
    var tempatlahir = $("#tempatlahir", "#frm_tambah_pengalaman").val();
    var tgllahir = $("#tanggallahir", "#frm_tambah_pengalaman").val();
    var statuspegawai = $("#statuspegawai", "#frm_tambah_pengalaman").val();
    var tglmulaikerja = $("#tglmulaikerja", "#frm_tambah_pengalaman").val();
    var tglakhirkerja = $("#tglakhirkerja", "#frm_tambah_pengalaman").val();
    var jabatanakhir = $("#jabatanakhir", "#frm_tambah_pengalaman").val();
    var jabatanakhireng = $("#jabatanakhireng", "#frm_tambah_pengalaman").val();
    var email = $("#email", "#frm_tambah_pengalaman").val();

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
        alert("NIK masih kosong");
    } else if (nama == "") {
        alert("Nama masih kosong");
    } else if (bagian == "") {
        alert("Bagian masih kosong");
    } else if (tempatlahir == "") {
        alert("Tempat lahir masih kosong");
    } else if (tgllahir == "") {
        alert("Tanggal lahir masih kosong");
    } else if (statuspegawai == "") {
        alert("Status pegawai lahir masih kosong");
    } else if (tglmulaikerja == "") {
        alert("Tanggal mulai kerja masih kosong");
    } else if (tglakhirkerja == "") {
        alert("Tanggal akhir kerja masih kosong");
    } else if (jabatanakhir == "") {
        alert("Jabatan masih kosong");
    } else if (jabatanakhireng == "") {
        alert("Jabatan masih kosong");
    } else if (email == "") {
        alert("Email masih kosong");
    } else {
        $("#_div_loading").dialog("open");
        $.ajax({
            data: {
                nosurat: nosurat,
                bulan: bulan,
                tahun: tahun,
                nik: nik,
                nama: nama,
                bagian: bagian,
                tempatlahir: tempatlahir,
                tgllahir: tgllahir,
                statuspegawai: statuspegawai,
                tglmulaikerja: tglmulaikerja,
                tglakhirkerja: tglakhirkerja,
                jabatanakhir: jabatanakhir,
                jabatanakhireng: jabatanakhireng,
                email: email,
            },
            url: APP_URL + "/pengalaman/simpanpengalaman",
            type: "POST",
            dataType: "json",
            success: function (data) {
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
                    window.location.href = APP_URL + "/pengalamankerja";
                }
                // alert(data.success);
                // window.location.href = APP_URL + "/pengalamankerja";
            },
            error: function (data) {
                console.log("Error:", data);
            },
        });
        //END AJAX
    }
}

function fn_hapus_keperluan(KeperluanID) {
    var r = confirm("Yakin akan hapus data?");
    var APP_URL = $('meta[name="_base_url"]').attr("content");

    if (r == true) {
        // alert("ini?"+" "+registrasi);
        $.ajax({
            data: {
                noreg: KeperluanID,
            },
            url: APP_URL + "/keperluan/hapus",
            type: "POST",
            dataType: "json",
            success: function (data) {
                alert(data.success);
                window.location.href = APP_URL + "/keperluansurat";
            },
            error: function (data) {
                console.log("Error:", data);
            },
        });
    } else {
        alert("You pressed Cancel!");
    }
}
