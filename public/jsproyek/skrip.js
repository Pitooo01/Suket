$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilperusahaanall();


  })

//function tampil
function tampilperusahaanall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_perusahaan').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilperusahaan',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'PerusahaanID'},
            { data: 'Nama'},
            { data: 'Alamat'},
            { data: 'Notelp'},
            { data: 'PenanggungJawab'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}

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


function fn_tambah_perusahaan(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var nama              = $('#nama','#frm_tambah_perusahaan').val();
  var alamat            = $('#alamat','#frm_tambah_perusahaan').val();
  var notelp            = $('#notelp','#frm_tambah_perusahaan').val();
  var penanggungjawab   = $('#penanggungjawab','#frm_tambah_perusahaan').val();

  if(nama==''){
    alert("Nama masih kosong");
  }else if(alamat==''){
    alert("Alamat masih kosong");
  }else if(notelp==''){
    alert("No. Telp masih kosong");
  }else if(penanggungjawab==''){
    alert("Penanggung jawab masih kosong");
  }else{
  $.ajax({
    data: {
            nama:nama,
            alamat:alamat,
            notelp:notelp,
            penanggungjawab:penanggungjawab
          },
    url: APP_URL+'/perusahaan/simpanperusahaan',
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
//END AJAX
}
}

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

