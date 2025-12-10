$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilbarangall();


  })

//function tampil barang
function tampilbarangall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_barang').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilbarang',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'BarangID'},
            { data: 'Nama'},
            { data: 'Satuan'},
            { data: 'Jumlah'},
            { data: 'HargaBeli'},
            { data: 'HargaJual'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}

function fn_ubah_barang($id){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var barangid          = $('#barangid','#frm_ubah_barang').val();
  var nama              = $('#nama','#frm_ubah_barang').val();
  var satuan            = $('#satuan','#frm_ubah_barang').val();
  var hargabeli         = $('#hargabeli','#frm_ubah_barang').val();
  var hargajual         = $('#hargajual','#frm_ubah_barang').val();

  $.ajax({
    data: {
            barangid:barangid,
            nama:nama,
            satuan:satuan,
            hargabeli:hargabeli,
            hargajual:hargajual
          },
    url: APP_URL+'/barang/ubahbarang',
    type: "PATCH",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/barang';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
}); 
}


function fn_tambah_barang(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var nama              = $('#nama','#frm_tambah_barang').val();
  var satuan            = $('#satuan','#frm_tambah_barang').val();
  var hargabeli         = $('#hargabeli','#frm_tambah_barang').val();
  var hargajual         = $('#hargajual','#frm_tambah_barang').val();

  if(nama==''){
    alert("Nama masih kosong");
  }else if(satuan==''){
    alert("Satuan masih kosong");
  }else if(hargabeli==''){
    alert("Harga beli masih kosong");
  }else if(hargajual==''){
    alert("Harga jual masih kosong");
  }else{
  $.ajax({
    data: {
            nama:nama,
            satuan:satuan,
            hargabeli:hargabeli,
            hargajual:hargajual
          },
    url: APP_URL+'/barang/simpanbarang',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/barang';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX
}
}

function fn_hapus_barang(BarangID)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:BarangID,
            },
      url: APP_URL+'/barang/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/barang';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

