$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilkeperluanall();


  })

//function tampil alasan
function tampilkeperluanall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_keperluan').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilkeperluan',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'KeperluanSuratID'},
            { data: 'Nama'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}

function fn_ubah_keperluan($id){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var keperluanid       = $('#keperluanid','#frm_ubah_keperluan').val();
  var nama              = $('#nama','#frm_ubah_keperluan').val();

  $.ajax({
    data: {
            keperluanid:keperluanid,
            nama:nama
          },
    url: APP_URL+'/keperluan/ubahkeperluan',
    type: "PATCH",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/keperluansurat';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
}); 
}


function fn_tambah_keperluan(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var nama              = $('#keperluansurat','#frm_tambah_keperluan').val();


  if(nama==''){
    alert("Nama masih kosong");
  }else{
  $.ajax({
    data: {
            nama:nama
          },
    url: APP_URL+'/keperluan/simpankeperluan',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/keperluansurat';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX
}
}

function fn_hapus_keperluan(KeperluanID)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:KeperluanID,
            },
      url: APP_URL+'/keperluan/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/keperluansurat';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

