$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
    tampilproyekall();
    tampil_detail_barang();
    hitung_jumlah();

    


});

 

function formatNumber(num) {
  //return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '.');
  return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

//


//function tampil all
function tampilproyekall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_proyek').DataTable({
    
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/bayar/tampil',
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





