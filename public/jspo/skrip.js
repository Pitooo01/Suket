$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilpoall();
    tampil_detail_barang_po();


    //ajax autocomplete proyek
    $( "#noproyek" ).autocomplete({
      source: function( request, response ) {
      var APP_URL   = $('meta[name="_base_url"]').attr('content');
      var regedit   = $('#noproyek','#frm_tambah_po').val();
        // Fetch data
        $.ajax({
          minlength:3,
          type: 'post',
          url:APP_URL+'/pobaru/autoproyek',
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
         $('#namaproyek').val(ui.item.label); // display the selected text
         $('#noproyek').val(ui.item.value); // save selected id to input
         return false;
      }
  });
  //end ajax autocomplete proyek


  //ajax autocomplete supplier
  $( "#namasupplier" ).autocomplete({
    source: function( request, response ) {
    var APP_URL   = $('meta[name="_base_url"]').attr('content');
    var regedit   = $('#namasupplier','#frm_tambah_po').val();
      // Fetch data
      $.ajax({
        minlength:3,
        type: 'post',
        url:APP_URL+'/pobaru/autosupplier',
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
       $('#namasupplier').val(ui.item.label); // display the selected text
       $('#supplierid').val(ui.item.value); // save selected id to input
       return false;
    }
});
//end ajax autocomplete supplier
});

function fn_tambah_po()
{
  var APP_URL                = $('meta[name="_base_url"]').attr('content');
  var noproyek               = $('#noproyek','#frm_tambah_po').val();
  var namasupplier           = $('#namasupplier','#frm_tambah_po').val();
  var supplierid             = $('#supplierid','#frm_tambah_po').val();
  var tanggalpesan           = $('#tanggalpesan','#frm_tambah_po').val();
 
  if(noproyek==''){
    alert("Nomor proyek masih kosong");
  }else if(namasupplier==''){
    alert("Nama supplier masih kosong");
  }else if(tanggalpesan==''){
    alert("Tanggal pesan masih kosong");
  }else{
  $.ajax({
    data: {
            noproyek:noproyek,
            supplierid:supplierid,
            tanggalpesan:tanggalpesan
            
          },
    url: APP_URL+'/pobaru/simpanpo',
    type: "POST",
    dataType: 'json',
    success: function (data) {
            
         alert(data.success);
         window.location.href = APP_URL+'/pobaru';

        
    },
    error: function (data) {
        console.log('Error:', data);
        
    }
  });
  //END AJAX

  }
}

function tampilpoall()
{
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_po').DataTable({
    
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilpoall',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'PoID'},
            { data: 'NamaSupplier'},
            { data: 'TanggalPesan'},
            { data: 'NamaPerusahaan'},
            { data: 'NamaProyek'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}


//function tampil detail barang
function tampil_detail_barang_po(){
  var APP_URL      = $('meta[name="_base_url"]').attr('content');
  var poid         = $('#nopo','#frm_tampil_detail_po').val();
  
  $('#tampil_detail_po').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampildetailbarangpo',
          method:'get',
          data:{poid:poid},
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'BarangID'},
            { data: 'NamaBarang'},
            { data: 'NamaSatuan'},
            { data: 'Jumlah'},
            { data: 'Harga'}
        ],
         
    });
}//end function


//start
function fn_setujui_po()
{
  var APP_URL      = $('meta[name="_base_url"]').attr('content');
  var nopo         = $('#nopo','#frm_tampil_detail_po').val();
  var r            = confirm("Yakin akan setujui PO?");
  
  if (r == true) {
    // alert("ini?"+" "+registrasi);
    $.ajax({
      data: {
              nopo:nopo,
            },
      url: APP_URL+'/po/setujui',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/pobaru';

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

//start
function fn_batalkan_po(id)
{
  var APP_URL      = $('meta[name="_base_url"]').attr('content');
  var r            = confirm("Yakin akan batalkan PO?");
  
  if (r == true) {
    $.ajax({
      data: {
             id:id,
            },
      url: APP_URL+'/po/batal',
          type: "POST",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
               window.location.href = APP_URL+'/pobaru';

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
