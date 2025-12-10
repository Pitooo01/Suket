$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
});


//tampil hasil dokter
function tampilhasilperbulan(){
  var APP_URL       = $('meta[name="_base_url"]').attr('content');
  var bulan         = $('#noregistrasi','#frm_info').val();
  var tahun         = $('#medrec','#frm_info').val();


  $('#tampil_hasil_bulanan').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          data: {
                  noregistrasi:reg
                },
          url: APP_URL+'/tampilhasildokter',
          method:'get',
        },
    
        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'RegID'},
            { data: 'MEDRECID'},
            { data: 'Nama'},
            { data: 'JenisKelamin'},
            { data: 'Umur'},
            { data: 'Perusahaan'},
            { data: 'TanggalPeriksa'},
            { data: 'TanggalKirimKedokter'},
            { data: 'LoginBuat'},
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}
//end tampil hasil dokter