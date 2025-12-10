$(function () {
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });
});

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
            url: APP_URL + "/keteranganbekerja/tampildata",
            type: "GET",
            dataType: "json",
            success: function (data) {
                $("#tampil_keterangan_kerja").html(data.html);
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
    $("#tampil_keterangan_kerja").html("Kosong");
}

function fn_kirim_email(suketid) {
    alert(suketid);
}

function fn_cetak(suketid) {
    alert(suketid);
}
