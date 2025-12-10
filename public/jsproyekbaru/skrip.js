$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilproyekall();
    tampil_detail_barang();
    hitung_jumlah();

    //ajax autocomplete nama perusahaan
    $( "#perusahaan" ).autocomplete({
      source: function( request, response ) {
      var APP_URL   = $('meta[name="_base_url"]').attr('content');
      var regedit   = $('#perusahaan','#frm_tambah_proyekbaru').val();
        // Fetch data
        $.ajax({
          minlength:3,
          type: 'post',
          url:APP_URL+'/proyekbaru/autonama',
          dataType: "json",
          data: {
             // _token: CSRF_TOKEN,
             search: request.term,
             reg:regedit
          },
          success: function( data ) {
             response( data );
          }
        });
      },
      select: function (event, ui) {
         // Set selection
         $('#perusahaan').val(ui.item.label); // display the selected text
         $('#perusahaanid').val(ui.item.value); // save selected id to input
         $('#alamat').val(ui.item.alamat); // save selected id to input
         $('#penanggungjawab').val(ui.item.pic); // save selected id to input
         return false;
      }
  });
  //end ajax autocomplete nama perusahaan


  //ajax autocomplete nama barang detail
  $( "#namadetail" ).autocomplete({
    source: function( request, response ) {
    var APP_URL   = $('meta[name="_base_url"]').attr('content');
    var regedit   = $('#namadetail','#frm_tambah_detail_barang').val();
      // Fetch data
      $.ajax({
        minlength:3,
        type: 'post',
        url:APP_URL+'/proyekbaru/autobarang',
        dataType: "json",
        data: {
           // _token: CSRF_TOKEN,
           search: request.term,
           reg:regedit
        },
        success: function( data ) {
           response( data );
        }
      });
    },
    select: function (event, ui) {
       // Set selection
       $('#namadetail').val(ui.item.label); // display the selected text
       $('#barangiddetail').val(ui.item.value); // save selected id to input
       $('#hargadetail').val(ui.item.harga); // save selected id to input
       $('#satuandetail').val(ui.item.satuan); // save selected id to input
       return false;
    }
});
//end ajax autocomplete nama barang detail



  });

  //

//


//

function formatNumber(num) {
  //return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '.');
  return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

//


//function tampil all
function tampilproyekall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_proyek').DataTable({
    // createdRow: function (row, data, dataIndex) {
    //   if (data.NilaiProyek !== undefined) {
    //       // 4 here is the cell number, it starts from 0 where this number should appear
    //       $(row).find('td:eq(5)').html(formatNumber(data.NilaiProyek)); 
    //   }
    // },
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilproyekbaru',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'KodeProyek'},
            { data: 'Nama'},
            { data: 'NamaPerusahaan'},
            { data: 'LokasiProyek'},
            { data: 'NilaiProyek'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}//end function




//function tampil detail barang
function tampil_detail_barang(){
  var APP_URL      = $('meta[name="_base_url"]').attr('content');
  var proyekid   = $('#proyekid','#frm_tambah_detail').val();
  
  $('#tampil_detail_barang').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampildetailbarang',
          method:'get',
          data:{proyekid:proyekid},
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'BarangID'},
            { data: 'NamaBarang'},
            { data: 'Satuan'},
            { data: 'Jumlah'},
            { data: 'Harga'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}//end function


//start function
function hitung_jumlah()
{
  var APP_URL   = $('meta[name="_base_url"]').attr('content');
  var proyekid   = $('#proyekid','#frm_tambah_detail').val();

  $.ajax({
    url:APP_URL+'/hitungjumlah',
    method:'get',
    data:{proyekid:proyekid},
    dataType:'json',
      success:function(data)
      {
        $('#hargadetailtotal').val(data.hargatotal);
        
      }
})

}
//end function

//

function fn_hapus_detailbarang(id)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:id,
            },
      url: APP_URL+'/detail/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               //window.location.href = APP_URL+'/supplier';
               tampil_detail_barang();
               hitung_jumlah();

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

//

function fn_ubah_perusahaan(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var perusahaanid      = $('#perusahaanid','#frm_ubah_perusahaan').val();
  var nama              = $('#nama','#frm_ubah_perusahaan').val();
  var alamat            = $('#alamat','#frm_ubah_perusahaan').val();
  var notelp            = $('#notelp','#frm_ubah_perusahaan').val();
  var penanggungjawab   = $('#penanggungjawab','#frm_ubah_perusahaan').val();

  $.ajax({
    data: {
            perusahaanid:perusahaanid,
            nama:nama,
            alamat:alamat,
            notelp:notelp,
            penanggungjawab:penanggungjawab
          },
    url: APP_URL+'/perusahaan/ubahperusahaan',
    type: "PATCH",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/perusahaan';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
}); 
}


function fn_tambah_proyekbaru(){
  var APP_URL                = $('meta[name="_base_url"]').attr('content');
  var nama                   = $('#nama','#frm_tambah_proyekbaru').val();
  var perusahaanid           = $('#perusahaanid','#frm_tambah_proyekbaru').val();
  var alamat                 = $('#alamat','#frm_tambah_proyekbaru').val();
  var penanggungjawab        = $('#penanggungjawab','#frm_tambah_proyekbaru').val();
  var tanggalproyek          = $('#tanggalproyek','#frm_tambah_proyekbaru').val();
  var tanggalakhirproyek     = $('#tanggalakhirproyek','#frm_tambah_proyekbaru').val();

  if(nama==''){
    alert("Nama masih kosong");
  }else if(perusahaanid==''){
    alert("Perusahaan masih kosong");
  }else if(alamat==''){
    alert("Alamat masih kosong");
  }else if(penanggungjawab==''){
    alert("Penanggung jawab masih kosong");
  }else{
  $.ajax({
    data: {
            nama:nama,
            perusahaanid:perusahaanid,
            alamat:alamat,
            penanggungjawab:penanggungjawab,
            tanggalproyek:tanggalproyek,
            tanggalakhirproyek:tanggalakhirproyek
          },
    url: APP_URL+'/proyekbaru/simpanproyekbaru',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/proyekbaru';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX

  }
}

//start

function fn_tambah_detail(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var proyekid          = $('#proyekid','#frm_tambah_detail').val();
  var namadetail        = $('#namadetail','#frm_tambah_detail_barang').val();
  var barangiddetail    = $('#barangiddetail','#frm_tambah_detail_barang').val();
  var hargadetail       = $('#hargadetail','#frm_tambah_detail_barang').val();
  var satuandetail      = $('#satuandetail','#frm_tambah_detail_barang').val();
  var jumlahdetail      = $('#jumlahdetail','#frm_tambah_detail_barang').val();

  if(namadetail==''){
    alert("Nama barang masih kosong");
  }else if(barangiddetail==''){
    alert("Kode masih kosong");
  }else if(hargadetail==''){
    alert("Harga masih kosong");
  }else if(satuandetail==''){
    alert("Satuan masih kosong");
  }else if(jumlahdetail==''){
    alert("Jumlah masih kosong");
  }  else{
  $.ajax({
    data: {
            proyekid:proyekid,
            namadetail:namadetail,
            barangiddetail:barangiddetail,
            hargadetail:hargadetail,
            satuandetail:satuandetail,
            jumlahdetail:jumlahdetail
          },
    url: APP_URL+'/proyekbaru/simpandetailbarang',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         tampil_detail_barang();
         hitung_jumlah();
         $('#namadetail','#frm_tambah_detail_barang').val('');
         $('#barangiddetail','#frm_tambah_detail_barang').val('');
         $('#hargadetail','#frm_tambah_detail_barang').val('');
         $('#satuandetail','#frm_tambah_detail_barang').val('');
         $('#jumlahdetail','#frm_tambah_detail_barang').val('');
         //window.location.href = APP_URL+'/proyekbaru';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX

  }
}

//end

//start

function fn_setujui_proyek()
{
  var r         = confirm("Yakin akan verifikasi data?");
  var APP_URL   = $('meta[name="_base_url"]').attr('content');
  var proyekid  = $('#proyekid','#frm_tambah_detail').val();

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:proyekid,
            },
      url: APP_URL+'/proyekbaru/verifikasi',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/proyekbaru';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

//end

function fn_hapus_perusahaan(PerusahaanID)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:PerusahaanID,
            },
      url: APP_URL+'/perusahaan/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/perusahaan';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

