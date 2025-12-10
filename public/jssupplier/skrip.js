$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilsupplierall();


  })

//function tampil
function tampilsupplierall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_supplier').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilsupplier',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'SupplierID'},
            { data: 'Nama'},
            { data: 'Alamat'},
            { data: 'Notelp'},
            { data: 'PenanggungJawab'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}

function fn_ubah_supplier(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var supplierid        = $('#supplierid','#frm_ubah_supplier').val();
  var nama              = $('#nama','#frm_ubah_supplier').val();
  var alamat            = $('#alamat','#frm_ubah_supplier').val();
  var notelp            = $('#notelp','#frm_ubah_supplier').val();
  var penanggungjawab   = $('#penanggungjawab','#frm_ubah_supplier').val();

  $.ajax({
    data: {
            supplierid:supplierid,
            nama:nama,
            alamat:alamat,
            notelp:notelp,
            penanggungjawab:penanggungjawab
          },
    url: APP_URL+'/supplier/ubahsupplier',
    type: "PATCH",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/supplier';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
}); 
}


function fn_tambah_supplier(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var nama              = $('#nama','#frm_tambah_supplier').val();
  var alamat            = $('#alamat','#frm_tambah_supplier').val();
  var notelp            = $('#notelp','#frm_tambah_supplier').val();
  var penanggungjawab   = $('#penanggungjawab','#frm_tambah_supplier').val();

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
    url: APP_URL+'/supplier/simpansupplier',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/supplier';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX
}
}

function fn_hapus_supplier(SupplierID)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:SupplierID,
            },
      url: APP_URL+'/supplier/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/supplier';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

