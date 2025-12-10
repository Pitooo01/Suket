$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilalasanall();


  })

//function tampil alasan
function tampilalasanall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_alasan').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilalasan',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'AlasanID'},
            { data: 'Nama'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}

function fn_ubah_alasan($id){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var alasanid          = $('#alasanid','#frm_ubah_alasan').val();
  var nama              = $('#nama','#frm_ubah_alasan').val();

  $.ajax({
    data: {
            alasanid:alasanid,
            nama:nama
          },
    url: APP_URL+'/alasan/ubahalasan',
    type: "PATCH",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/alasanresign';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
}); 
}


function fn_tambah_alasan(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var nama              = $('#alasanresign','#frm_tambah_alasan').val();


  if(nama==''){
    alert("Nama masih kosong");
  }else{
  $.ajax({
    data: {
            nama:nama
          },
    url: APP_URL+'/alasan/simpanalasan',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/alasanresign';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
});
//END AJAX
}
}

function fn_hapus_alasan(AlasanID)
{
  var r = confirm("Yakin akan hapus data?");
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
             noreg:AlasanID,
            },
      url: APP_URL+'/alasan/hapus',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/alasanresign';

          },
          error: function (data) {
              console.log('Error:', data);
              
          }
    });
  } else {
    alert("You pressed Cancel!");
  } 
}

