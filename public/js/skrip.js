$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });

  

	//$('#accordion').fadeOut();
  $('#simpan').fadeOut();
  tampilhasiluser();
  $('#noregistrasiedit').attr('readonly','true');

  //form dialog pasien
  $( "#tampil_pasien_daftar" ).dialog({
      autoOpen: false,
      resizable: false,
      height: "auto",
      width: "auto",
      modal: true,
      buttons: {
        Cancel: function() {
          $( this ).dialog( "close" );

        }
      }
    });
   //end form dialog pasien

    $( "#accordion" ).accordion({
      collapsible: true,
      heightStyle: "content"
    });


    //ajax autocomplete
    $( "#namaautocomplete" ).autocomplete({
        source: function( request, response ) {
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:'/hasilmcu/autonama',
            dataType: "json",
            data: {
               // _token: CSRF_TOKEN,
               search: request.term
            },
            success: function( data ) {
               response( data );
            }
          });
        },
        select: function (event, ui) {
           // Set selection
           $('#namaautocomplete').val(ui.item.label); // display the selected text
           $('#namaautocompleteid').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete
    

});

function fn_tampil_data(){
    	$("#accordion").fadeIn();
    }

function fn_batal(){
    	$('#accordion').fadeOut();
    }

//tampil semua data pasien
function fn_tampil_pasien(){
	$('#tampil_pasien_daftar').dialog("open");
  tampilall();
  
}
//end tampil semua data pasien


//load data pasien
function fn_load(reg,medrec,nama,perusahaan,paket,tanggalbuat,tanggallahir,kelamin,umur){
  $("#noregistrasi","#frm_info").val(reg);
  $("#medrec","#frm_info").val(medrec);
  $("#nama","#frm_info").val(nama);
  $("#umur","#frm_info").val(umur);
  $("#perusahaan","#frm_info").val(perusahaan);
  $("#tglperiksa","#frm_info").val(tanggalbuat);
  $("#paket","#frm_info").val(paket);
  $("#jeniskelamin","#frm_info").val(kelamin);
  $("#tgllahir","#frm_info").val(tanggallahir);
  $('#tampil_pasien_daftar').dialog("close");
  $("#simpan").fadeIn();
}
//end load data pasien

//function simpan
function fn_simpan(){
  //alert("Simpan");
  var APP_URL        = $('meta[name="_base_url"]').attr('content');
  var reg            = $('#noregistrasi','#frm_info').val();
  var medrec         = $('#medrec','#frm_info').val();
  var nama           = $('#nama','#frm_info').val();
  var umur           = $('#umur','#frm_info').val();
  var perusahaan     = $('#perusahaan','#frm_info').val();
  var tglperiksa     = $('#tglperiksa','#frm_info').val();
  var paket          = $('#paket','#frm_info').val();
  var jeniskelamin   = $('#jeniskelamin','#frm_info').val();
  var tgllahir       = $('#tgllahir','#frm_info').val();
  
  $.ajax({
          data: {
                  noregistrasi:reg,
                  medrec:medrec,
                  nama:nama,
                  perusahaan:perusahaan,
                  tglperiksa:tglperiksa,
                  paket:paket,
                  jeniskelamin:jeniskelamin,
                  tgllahir:tgllahir,
                  umur:umur
                },
          url: APP_URL+'/hasilmcu/simpanajaxhasilmcu',
          type: "POST",
          dataType: 'json',
          success: function (data) {
     
              // $('#productForm').trigger("reset");
              // $('#ajaxModel').modal('hide');
              // table.draw();
               alert(data.success);
               //window.location = APP_URL+"/hasilmcu";
               //$("#accordion").fadeIn();
               $('#simpan').fadeOut();
         
          },
          error: function (data) {
              console.log('Error:', data);
              
          }
      });
}
//end function simpan

//function simpan anamnesa
function fn_simpan_anamnesa(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var ketkeluhan        = $('#ketkeluhan','#_frm_anamnesa').val();
  var cederakepala      = $("input[name='cederakepala']:checked").val();
  var ketcederakepala   = $('#ketcederakepala','#_frm_anamnesa').val();
  var pingsan           = $("input[name='pingsan']:checked").val();
  var ketpingsan        = $('#ketpingsan','#_frm_anamnesa').val();
  var visual            = $("input[name='visual']:checked").val();
  var ketvisual         = $('#ketvisual','#_frm_anamnesa').val();
  var hearing           = $("input[name='hearing']:checked").val();
  var kethearing        = $('#kethearing','#_frm_anamnesa').val();
  var nose              = $("input[name='nose']:checked").val();
  var ketnose           = $('#ketnose','#_frm_anamnesa').val();
  var tbc               = $("input[name='tbc']:checked").val();
  var kettbc            = $('#kettbc','#_frm_anamnesa').val();
  var heart             = $("input[name='heart']:checked").val();
  var ketheart          = $('#ketheart','#_frm_anamnesa').val();
  var allergies         = $("input[name='allergies']:checked").val();
  var ketallergies      = $('#ketallergies','#_frm_anamnesa').val();
  var unusual           = $("input[name='unusual']:checked").val();
  var ketunusual        = $('#ketunusual','#_frm_anamnesa').val();
  var loss              = $("input[name='loss']:checked").val();
  var ketloss           = $('#ketloss','#_frm_anamnesa').val();
  var recurring         = $("input[name='recurring']:checked").val();
  var ketrecurring      = $('#ketrecurring','#_frm_anamnesa').val();
  var abdominal         = $("input[name='abdominal']:checked").val();
  var ketabdominal      = $('#ketabdominal','#_frm_anamnesa').val();
  var chronic           = $("input[name='chronic']:checked").val();
  var ketchronic        = $('#ketchronic','#_frm_anamnesa').val();
  var blending          = $("input[name='blending']:checked").val();
  var ketblending       = $('#ketblending','#_frm_anamnesa').val();
  var kidney            = $("input[name='kidney']:checked").val();
  var ketkidney         = $('#ketkidney','#_frm_anamnesa').val();
  var skin              = $("input[name='skin']:checked").val();
  var ketskin           = $('#ketskin','#_frm_anamnesa').val();
  var swollen           = $("input[name='swollen']:checked").val();
  var ketswollen        = $('#ketswollen','#_frm_anamnesa').val();
  var malaria           = $("input[name='malaria']:checked").val();
  var ketmalaria        = $('#ketmalaria','#_frm_anamnesa').val();
  var hepatitis         = $("input[name='hepatitis']:checked").val();
  var kethepatitis      = $('#kethepatitis','#_frm_anamnesa').val();
  var diabetes          = $("input[name='diabetes']:checked").val();
  var ketdiabetes       = $('#ketdiabetes','#_frm_anamnesa').val();
  var rheumatic         = $("input[name='rheumatic']:checked").val();
  var ketrheumatic      = $('#ketrheumatic','#_frm_anamnesa').val();
  var venereal          = $("input[name='venereal']:checked").val();
  var ketvenereal       = $('#ketvenereal','#_frm_anamnesa').val();
  var hemorrhoid        = $("input[name='hemorrhoid']:checked").val();
  var kethemorrhoid     = $('#kethemorrhoid','#_frm_anamnesa').val();
  var gastritis         = $("input[name='gastritis']:checked").val();
  var ketgastritis      = $('#ketgastritis','#_frm_anamnesa').val();
  var migrain           = $("input[name='migrain']:checked").val();
  var ketmigrain        = $('#ketmigrain','#_frm_anamnesa').val();
  var penumonia         = $("input[name='penumonia']:checked").val();
  var ketpenumonia      = $('#ketpenumonia','#_frm_anamnesa').val();
  var asthma            = $("input[name='asthma']:checked").val();
  var ketasthma         = $('#ketasthma','#_frm_anamnesa').val();
  var hypertension      = $("input[name='hypertension']:checked").val();
  var kethypertension   = $('#kethypertension','#_frm_anamnesa').val();
  var dallergi          = $("input[name='dallergi']:checked").val();
  var ketdallergi       = $('#ketdallergi','#_frm_anamnesa').val();
  var backpain          = $("input[name='backpain']:checked").val();
  var ketbackpain       = $('#ketbackpain','#_frm_anamnesa').val();
  var varicose          = $("input[name='varicose']:checked").val();
  var ketvaricose       = $('#ketvaricose','#_frm_anamnesa').val();
  var cancer            = $("input[name='cancer']:checked").val();
  var ketcancer         = $('#ketcancer','#_frm_anamnesa').val();
  var otheranamnesa     = $("input[name='otheranamnesa']:checked").val();
  var ketotheranamnesa  = $('#ketotheranamnesa','#_frm_anamnesa').val();
  

  $.ajax({
          data: {
                  noreg:reg,
                  ketkeluhan:ketkeluhan,
                  cederakepala:cederakepala,
                  ketcederakepala:ketcederakepala,
                  pingsan:pingsan,
                  ketpingsan:ketpingsan,
                  visual:visual,
                  ketvisual:ketvisual,
                  hearing:hearing,
                  kethearing:kethearing,
                  nose:nose,
                  ketnose:ketnose,
                  tbc:tbc,
                  kettbc:kettbc,
                  heart:heart,
                  ketheart:ketheart,
                  allergies:allergies,
                  ketallergies:ketallergies,
                  unusual:unusual,
                  ketunusual:ketunusual,
                  loss:loss,
                  ketloss:ketloss,
                  recurring:recurring,
                  ketrecurring:ketrecurring,
                  abdominal:abdominal,
                  ketabdominal:ketabdominal,
                  chronic:chronic,
                  ketchronic:ketchronic,
                  blending:blending,
                  ketblending:ketblending,
                  kidney:kidney,
                  ketkidney:ketkidney,
                  skin:skin,
                  ketskin:ketskin,
                  swollen:swollen,
                  ketswollen:ketswollen,
                  malaria:malaria,
                  ketmalaria:ketmalaria,
                  hepatitis:hepatitis,
                  kethepatitis:kethepatitis,
                  diabetes:diabetes,
                  ketdiabetes:ketdiabetes,
                  rheumatic:rheumatic,
                  ketrheumatic:ketrheumatic,
                  venereal:venereal,
                  ketvenereal:ketvenereal,
                  hemorrhoid:hemorrhoid,
                  kethemorrhoid:kethemorrhoid,
                  gastritis:gastritis,
                  ketgastritis:ketgastritis,
                  migrain:migrain,
                  ketmigrain:ketmigrain,
                  penumonia:penumonia,
                  ketpenumonia:ketpenumonia,
                  asthma:asthma,
                  ketasthma:ketasthma,
                  hypertension:hypertension,
                  kethypertension:kethypertension,
                  dallergi:dallergi,
                  ketdallergi:ketdallergi,
                  backpain:backpain,
                  ketbackpain:ketbackpain,
                  varicose:varicose,
                  ketvaricose:ketvaricose,
                  cancer:cancer,
                  ketcancer:ketcancer,
                  otheranamnesa:otheranamnesa,
                  ketotheranamnesa:ketotheranamnesa

                },
          url: APP_URL+'/hasilmcu/simpananamnesa',
          type: "POST",
          dataType: 'json',
          success: function (data) {
     
              // $('#productForm').trigger("reset");
              // $('#ajaxModel').modal('hide');
              // table.draw();
               alert(data.success);
               //window.location = APP_URL+"/hasilmcu";
               //$("#accordion").fadeIn();
               //$('#simpan').fadeOut();
         
          },
          error: function (data) {
              console.log('Error:', data);
              
          }
      });

}
//end function simpan anamnesa


//function tampil pasien all
function tampilall(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');

  $('#tampil_all').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/datareg'
        },

        columns: [
            { data: 'DT_RowIndex', orderable: false, searchable: false },
            { data: 'RegID', name: 'RegID' },
            { data: 'MEDRECID', name: 'MEDRECID' },
            { data: 'Nama', name: 'Nama' },
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
    });
}
//end tampil pasien all

//function tampil hasil peruser
function tampilhasiluser(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  
  $('#tampil_hasil').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        // ajax: '/datareg',
        ajax: {
          url: APP_URL+'/tampilhasiluser'
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
            { data: 'action',orderable: false, searchable: false}
        ],
         
    });
}
//end tampil hasil peruser

    