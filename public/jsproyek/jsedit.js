$( function() {
	 $.ajaxSetup({
          headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          }
    });
   tampiledit();
   load_data_pemeriksaan_mata();
   load_data_pemeriksaan_tht();
   load_sistem_pernapasan();
   load_sistem_kardiovaskuler();
   load_sistem_saluran_cerna();
   load_sistem_saluran_kemih();
   load_sistem_lain1();
   load_sistem_lain2();
   load_kesimpulan2();
    // $('.textarea').summernote();
    $('.textarea').summernote({
  height: 110,   //set editable area's height
  width:1000,
  codemirror: { // codemirror options
  theme: 'monokai'
  }
});
    $( "#accordion" ).accordion({
      collapsible: true,
      heightStyle: "content"
    });

	 

   //ajax autocomplete pemeriksaan mata
    $( "#eyecari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autonama',
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
           $('#eyecari').val(ui.item.label); // display the selected text
           $('#ideyecari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete pemeriksaan mata

    //ajax thtcari pemeriksaan tht
    $( "#thtcari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autotht',
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
           $('#thtcari').val(ui.item.label); // display the selected text
           $('#idthtcari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete pemeriksaan tht

    //ajax autocomplete sistem pernapasan
    $( "#auskultasicari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistempernapasan',
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
           $('#auskultasicari').val(ui.item.label); // display the selected text
           $('#idauskultasicari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete sistem pernapasan

    //ajax autocomplete kardiovaskuler
    $( "#bunyijantungcari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistemkardiovaskuler',
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
           $('#bunyijantungcari').val(ui.item.label); // display the selected text
           $('#idbunyijantungcari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete kardiovaskuler

    //ajax autocomplete sistem saluran kemih
    $( "#ginjalcari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistemsalurankemih',
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
           $('#ginjalcari').val(ui.item.label); // display the selected text
           $('#idginjalcari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete sistem saluran kemih

    //ajax autocomplete sistem lain1
    $( "#ektremitascari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistemlain1',
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
           $('#ektremitascari').val(ui.item.label); // display the selected text
           $('#idektremitascari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete sistem lain1


    
    //ajax autocomplete sistem lain2
    $( "#sistemsyarafcari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistemlain2',
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
           $('#sistemsyarafcari').val(ui.item.label); // display the selected text
           $('#idsistemsyarafcari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete sistem lain2

   //ajax autocomplete sistem cerna
    $( "#perutcari" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:3,
            type: 'post',
            url:APP_URL+'/hasilmcu/autosistemsalurancerna',
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
           $('#perutcari').val(ui.item.label); // display the selected text
           $('#idperutcari').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete sistem cerna


    //ajax autocomplete kode saran
    $( "#kodesaran" ).autocomplete({
        source: function( request, response ) {
        var APP_URL   = $('meta[name="_base_url"]').attr('content');
        var regedit   = $('#noregistrasi','#frm_info').val();
          // Fetch data
          $.ajax({
            minlength:1,
            type: 'post',
            url:APP_URL+'/hasilmcu/autokodesaran',
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
           $('#kodesaran').val(ui.item.label); // display the selected text
           $('#idkodesaran').val(ui.item.value); // save selected id to input
           return false;
        }
    });
    //end ajax autocomplete kode saran

});

function tampiledit(){
  var APP_URL   = $('meta[name="_base_url"]').attr('content');
  var regedit   = $('#noregistrasi','#frm_info').val();


    $.ajax({
        url:APP_URL+'/tampileditdata',
        method:'get',
        data:{regedit:regedit},
        dataType:'json',
          success:function(data)
          {
            $('#ketkeluhan').val(data.keluhan);
            $('input[name=cederakepala][value='+data.cederakepalaedit+']')[0].checked = true;
            $('#ketcederakepala').val(data.ketcederakepala);
            $('input[name=pingsan][value='+data.pingsan+']')[0].checked = true;
            $('#ketpingsan').val(data.ketpingsan);
            $('input[name=visual][value='+data.gangguanpenglihatan+']')[0].checked = true;
            $('#ketvisual').val(data.ketgangguanpenglihatan);
            $('input[name=hearing][value='+data.gangguanpendengaran+']')[0].checked = true;
            $('#kethearing').val(data.ketgangguanpendengaran);
            $('input[name=nose][value='+data.sinus+']')[0].checked = true;
            $('#ketnose').val(data.ketsinus);
            $('input[name=tbc][value='+data.tbc+']')[0].checked = true;
            $('#kettbc').val(data.kettbc);
            $('input[name=heart][value='+data.gangguanjantung+']')[0].checked = true;
            $('#ketheart').val(data.ketgangguanjantung);
            $('input[name=allergies][value='+data.alergi+']')[0].checked = true;
            $('#ketallergies').val(data.ketalergi);
            $('input[name=unusual][value='+data.perubahanberatbadan+']')[0].checked = true;
            $('#ketunusual').val(data.ketperubahanberatbadan);
            $('input[name=loss][value='+data.perubahannafsumakan+']')[0].checked = true;
            $('#ketloss').val(data.ketperubahannafsumakan);
            $('input[name=recurring][value='+data.gangguanpencernaan+']')[0].checked = true;
            $('#ketrecurring').val(data.ketgangguanpencernaan);
            $('input[name=abdominal][value='+data.nyeriperut+']')[0].checked = true;
            $('#ketabdominal').val(data.ketnyeriperut);
            $('input[name=chronic][value='+data.diarekronis+']')[0].checked = true;
            $('#ketchronic').val(data.ketdiarekronis);
            $('input[name=blending][value='+data.perdrahan+']')[0].checked = true;
            $('#ketblending').val(data.ketperdrahan);
            $('input[name=kidney][value='+data.gangguanginjal+']')[0].checked = true;
            $('#ketkidney').val(data.ketgangguanginjal);
            $('input[name=skin][value='+data.kelainan+']')[0].checked = true;
            $('#ketskin').val(data.ketkelainan);
            $('input[name=swollen][value='+data.nyeri+']')[0].checked = true;
            $('#ketswollen').val(data.ketnyeri);
            $('input[name=malaria][value='+data.penyakittropikal+']')[0].checked = true;
            $('#ketmalaria').val(data.ketpenyakittropikal);
            $('input[name=hepatitis][value='+data.penyakitkuning+']')[0].checked = true;
            $('#kethepatitis').val(data.ketpenyakitkuning);
            $('input[name=diabetes][value='+data.kencingmanis+']')[0].checked = true;
            $('#ketdiabetes').val(data.ketkencingmanis);
            $('input[name=rheumatic][value='+data.demamreumatik+']')[0].checked = true;
            $('#ketrheumatic').val(data.ketdemamreumatik);
            $('input[name=venereal][value='+data.penyakitkelamin+']')[0].checked = true;
            $('#ketvenereal').val(data.ketpenyakitkelamin);
            $('input[name=hemorrhoid][value='+data.wasir+']')[0].checked = true;
            $('#kethemorrhoid').val(data.ketwasir);
            $('input[name=gastritis][value='+data.sakitmaag+']')[0].checked = true;
            $('#ketgastritis').val(data.ketsakitmaag);
            $('input[name=migrain][value='+data.migrain+']')[0].checked = true;
            $('#ketmigrain').val(data.ketmigrain);
            $('input[name=penumonia][value='+data.pneumonia+']')[0].checked = true;
            $('#ketpenumonia').val(data.ketpneumonia);
            $('input[name=asthma][value='+data.asma+']')[0].checked = true;
            $('#ketasthma').val(data.ketasma);
            $('input[name=hypertension][value='+data.tekanandarahtinggi+']')[0].checked = true;
            $('#kethypertension').val(data.kettekanandarahtinggi);
            $('input[name=dallergi][value='+data.alergiobat+']')[0].checked = true;
            $('#ketdallergi').val(data.ketalergiobat);
            $('input[name=backpain][value='+data.nyeripinggang+']')[0].checked = true;
            $('#ketbackpain').val(data.ketnyeripinggang);
            $('input[name=varicose][value='+data.varises+']')[0].checked = true;
            $('#ketvaricose').val(data.ketvarises);
            $('input[name=cancer][value='+data.kanker+']')[0].checked = true;
            $('#ketcancer').val(data.ketkanker);
            $('input[name=otheranamnesa][value='+data.lainanamnesa+']')[0].checked = true;
            $('#ketotheranamnesa').val(data.ketlainanamnesa);
            $('input[name=exercise][value='+data.exercise+']')[0].checked = true;
            $('#ketexercise').val(data.ketexercise);
            $('input[name=cigarettes][value='+data.cigarettes+']')[0].checked = true;
            $('#ketcigarettes').val(data.ketcigarettes);
            $('input[name=alcoholic][value='+data.alcoholic+']')[0].checked = true;
            $('#ketalcoholic').val(data.ketalcoholic);
            $('input[name=medication][value='+data.medication+']')[0].checked = true;
            $('#ketmedication').val(data.ketmedication);
            $('input[name=operations][value='+data.operations+']')[0].checked = true;
            $('#ketoperations').val(data.ketoperations);
            $('input[name=famdiabetes][value='+data.famdiabetes+']')[0].checked = true;
            $('#ketfamdiabetes').val(data.ketfamdiabetes);
            $('input[name=famhypertension][value='+data.famhypertension+']')[0].checked = true;
            $('#ketfamhypertension').val(data.ketfamhypertension);
            $('input[name=famheart][value='+data.famheartdisease+']')[0].checked = true;
            $('#ketfamheart').val(data.ketfamheartdisease);
            $('input[name=famtbc][value='+data.famtuberculosis+']')[0].checked = true;
            $('#ketfamtbc').val(data.ketfamtuberculosis);
            $('input[name=famkidney][value='+data.famkidneydisease+']')[0].checked = true;
            $('#ketfamkidney').val(data.ketfamkidneydisease);
            $('input[name=famasthma][value='+data.famasthma+']')[0].checked = true;
            $('#ketfamasthma').val(data.ketfamasthma);
            $('input[name=fampsychiatric][value='+data.fampsychiatric+']')[0].checked = true;
            $('#ketfampsychiatric').val(data.ketfampsychiatric);
            $('input[name=famepilepsy][value='+data.famepilepsy+']')[0].checked = true;
            $('#ketfamepilepsy').val(data.ketfamepilepsy);
            $('input[name=famcancer][value='+data.famcancer+']')[0].checked = true;
            $('#ketfamcancer').val(data.ketfamcancer);
            $('input[name=famstroke][value='+data.famstroke+']')[0].checked = true;
            $('#ketfamstroke').val(data.ketfamstroke);
            $('#frekuensipernapasan').val(data.frekuensipernapasan);
            $('#trakhea').val(data.trakhea);
            $('#perkusi').val(data.perkusi);
            $('#hati').val(data.hati);
            $('#limpa').val(data.limpa);
            $('#masa').val(data.massa);
            $('#status').val(data.status);
            $('#statuskesimpulan').val(data.statuskesimpulan);

            $('#keadaanumum').val(data.keadaanumum);
            $('#kulit').val(data.kulit);
            $('#sistimlimfatik').val(data.sistimlimfatik);
            $('#kelenjertiroid').val(data.kelenjertiroid);
            

            

          }
    })
}

function fn_simpan_pemeriksaan_mata(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var ideyecari         = $('#ideyecari','#_frm_pemeriksaan_mata').val();

  if(ideyecari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            ideyecari:ideyecari,
          },

          url: APP_URL+'/hasilmcu/simpanpemeriksaanmata',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_data_pemeriksaan_mata();
               $('#eyecari','#_frm_pemeriksaan_mata').val('');
               $('#ideyecari','#_frm_pemeriksaan_mata').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}

function fn_simpan_pemeriksaan_tht(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var idthtcari         = $('#idthtcari','#_frm_pemeriksaan_tht').val();

  if(idthtcari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:idthtcari,
          },

          url: APP_URL+'/hasilmcu/simpanpemeriksaantht',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_data_pemeriksaan_tht();
               $('#thtcari','#_frm_pemeriksaan_tht').val('');
               $('#idthtcari','#_frm_pemeriksaan_tht').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}


function fn_simpan_sistem_pernapasan(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var idauskultasicari  = $('#idauskultasicari','#_frm_pernapasan').val();

  if(idauskultasicari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idauskultasicari:idauskultasicari,
          },

          url: APP_URL+'/hasilmcu/simpansistempernapasan',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_pernapasan();
               $('#auskultasicari','#_frm_pernapasan').val('');
               $('#idauskultasicari','#_frm_pernapasan').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}


function fn_simpan_sistem_kardiovaskuler(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var idbunyijantungcari  = $('#idbunyijantungcari','#_frm_kardiovaskuler').val();

  if(idbunyijantungcari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idbunyijantungcari:idbunyijantungcari,
          },

          url: APP_URL+'/hasilmcu/simpansistemkardiovaskuler',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_kardiovaskuler();
               $('#bunyijantungcari','#_frm_kardiovaskuler').val('');
               $('#idbunyijantungcari','#_frm_kardiovaskuler').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}


function fn_simpan_sistem_saluran_cerna(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var idperutcari       = $('#idperutcari','#_frm_saluran_cerna').val();

  if(idperutcari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idperutcari:idperutcari,
          },

          url: APP_URL+'/hasilmcu/simpansistemsalurancerna',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_saluran_cerna();
               $('#perutcari','#_frm_saluran_cerna').val('');
               $('#idperutcari','#_frm_saluran_cerna').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}


function fn_simpan_sistem_saluran_kemih(){
  var APP_URL           = $('meta[name="_base_url"]').attr('content');
  var reg               = $('#noregistrasi','#frm_info').val();
  var idginjalcari      = $('#idginjalcari','#_frm_saluran_kemih').val();

  if(idginjalcari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idginjalcari:idginjalcari,
          },

          url: APP_URL+'/hasilmcu/simpansistemsalurankemih',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_saluran_kemih();
               $('#ginjalcari','#_frm_saluran_kemih').val('');
               $('#idginjalcari','#_frm_saluran_kemih').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}

function fn_simpan_sistem_lain1(){
  var APP_URL               = $('meta[name="_base_url"]').attr('content');
  var reg                   = $('#noregistrasi','#frm_info').val();
  var idektremitascari      = $('#idektremitascari','#_frm_sistem_lain1').val();

  if(idektremitascari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idektremitascari:idektremitascari,
          },

          url: APP_URL+'/hasilmcu/simpansistemlain1',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_lain1();
               $('#ektremitascari','#_frm_sistem_lain1').val('');
               $('#idektremitascari','#_frm_sistem_lain1').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}


function fn_simpan_sistem_lain2(){
  var APP_URL               = $('meta[name="_base_url"]').attr('content');
  var reg                   = $('#noregistrasi','#frm_info').val();
  var idsistemsyarafcari    = $('#idsistemsyarafcari','#_frm_sistem_lain2').val();

  if(idsistemsyarafcari==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idsistemsyarafcari:idsistemsyarafcari,
          },

          url: APP_URL+'/hasilmcu/simpansistemlain2',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_lain2();
               $('#sistemsyarafcari','#_frm_sistem_lain2').val('');
               $('#idsistemsyarafcari','#_frm_sistem_lain2').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}

function fn_simpan_kesimpulan2(){
  var APP_URL               = $('meta[name="_base_url"]').attr('content');
  var reg                   = $('#noregistrasi','#frm_info').val();
  var idkodesaran           = $('#idkodesaran','#_frm_kesimpulan').val();

  if(idkodesaran==''){
    alert('Isi salah satu pencarian');
  }else{
    $.ajax({
          data: {
            noreg:reg,
            idkodesaran:idkodesaran,
          },

          url: APP_URL+'/hasilmcu/simpankesimpulan2',
          type: "POST",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_kesimpulan2();
               $('#kodesaran','#_frm_kesimpulan').val('');
               $('#idkodesaran','#_frm_kesimpulan').val('');
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
  }
  
}

function load_data_pemeriksaan_mata(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_pemeriksaan_mata').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datapemeriksaanmata',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });

}


function load_data_pemeriksaan_tht(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_pemeriksaan_tht').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datapemeriksaantht',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_sistem_pernapasan(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_pernapasan').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistempernapasan',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}


function load_sistem_kardiovaskuler(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_kardiovaskuler').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistemkardiovaskuler',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_sistem_saluran_cerna(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_saluran_cerna').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistemsalurancerna',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_sistem_saluran_kemih(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_saluran_kemih').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistemsalurankemih',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_sistem_lain1(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_lain1').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistemlain1',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_sistem_lain2(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_sistem_lain2').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datasistemlain2',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaIndikasi'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function load_kesimpulan2(){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
  var reg     = $('#noregistrasi','#frm_info').val();

  $('#tampil_kesimpulan2').DataTable({
        processing: true,
        serverSide: false,
        destroy: true,
        ajax: {
          url: APP_URL+'/datakesimpulan2',
          data:{reg:reg}
        },

        columns: [
            {data: 'NamaSaran'},
            {data: 'action', name: 'action', orderable: false, searchable: false}

        ],
  });
}

function reset_data(){

  $('#eyecari','#_frm_pemeriksaan_mata').val('');
  $('#ideyecari','#_frm_pemeriksaan_mata').val('');

}

function fn_hapus_pemeriksaan_mata(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            ideyecari:id,
          },

          url: APP_URL+'/hasilmcu/hapuspemeriksaanmata',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_data_pemeriksaan_mata();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}


function fn_hapus_pemeriksaan_tht(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:id,
          },

          url: APP_URL+'/hasilmcu/hapuspemeriksaantht',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_data_pemeriksaan_tht();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}


function fn_hapus_sistem_pernapasan(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistempernapasan',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_pernapasan();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}


function fn_hapus_sistem_kardiovaskuler(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistemkardiovaskuler',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_kardiovaskuler();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}

function fn_hapus_sistem_saluran_cerna(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistemsalurancerna',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_saluran_cerna();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}

function fn_hapus_sistem_saluran_kemih(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idthtcari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistemsalurankemih',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_saluran_kemih();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}


function fn_hapus_sistem_lain1(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idektremitascari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistemlain1',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_lain1();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}


function fn_hapus_sistem_lain2(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idsistemsyarafcari:id,
          },

          url: APP_URL+'/hasilmcu/hapussistemlain2',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_sistem_lain2();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}

function fn_hapus_kesimpulan2(reg,id){
  var APP_URL = $('meta[name="_base_url"]').attr('content');
    $.ajax({
          data: {
            noreg:reg,
            idkodesaran:id,
          },

          url: APP_URL+'/hasilmcu/hapuskesimpulan2',
          type: "patch",
          dataType: 'json',

          success: function (data) {
               alert(data.success);
               load_kesimpulan2();
          },
          error: function (data) {
              console.log('Error:', data);   
          }

    });
}

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

  var exercise          = $("input[name='exercise']:checked").val();
  var ketexercise       = $('#ketexercise','#_frm_anamnesa').val();
  var cigarettes        = $("input[name='cigarettes']:checked").val();
  var ketcigarettes     = $('#ketcigarettes','#_frm_anamnesa').val();
  var alcoholic         = $("input[name='alcoholic']:checked").val();
  var ketalcoholic      = $('#ketalcoholic','#_frm_anamnesa').val();
  var medication        = $("input[name='medication']:checked").val();
  var ketmedication     = $('#ketmedication','#_frm_anamnesa').val();
  var operations        = $("input[name='operations']:checked").val();
  var ketoperations     = $('#ketoperations','#_frm_anamnesa').val();
  
  var famdiabetes            = $("input[name='famdiabetes']:checked").val();
  var ketfamdiabetes         = $('#ketfamdiabetes','#_frm_penyakit_keluarga').val();
  var famhypertension        = $("input[name='famhypertension']:checked").val();
  var ketfamhypertension     = $('#ketfamhypertension','#_frm_penyakit_keluarga').val();
  var famheart               = $("input[name='famheart']:checked").val();
  var ketfamheart            = $('#ketfamheart','#_frm_penyakit_keluarga').val();
  var famtbc                 = $("input[name='famtbc']:checked").val();
  var ketfamtbc              = $('#ketfamtbc','#_frm_penyakit_keluarga').val();
  var famkidney              = $("input[name='famkidney']:checked").val();
  var ketfamkidney           = $('#ketfamkidney','#_frm_penyakit_keluarga').val();
  var famasthma              = $("input[name='famasthma']:checked").val();
  var ketfamasthma           = $('#ketfamasthma','#_frm_penyakit_keluarga').val();
  var fampsychiatric         = $("input[name='fampsychiatric']:checked").val();
  var ketfampsychiatric      = $('#ketfampsychiatric','#_frm_penyakit_keluarga').val();
  var famepilepsy            = $("input[name='famepilepsy']:checked").val();
  var ketfamepilepsy         = $('#ketfamepilepsy','#_frm_penyakit_keluarga').val();
  var famcancer              = $("input[name='famcancer']:checked").val();
  var ketfamcancer           = $('#ketfamcancer','#_frm_penyakit_keluarga').val();
  var famstroke              = $("input[name='famstroke']:checked").val();
  var ketfamstroke           = $('#ketfamstroke','#_frm_penyakit_keluarga').val();

  var keadaanumum            = $('#keadaanumum','#_frm_pemeriksaan_fisik').val();
  var tinggibadan            = $('#tinggibadan','#_frm_pemeriksaan_fisik').val();
  var beratbadan             = $('#beratbadan','#_frm_pemeriksaan_fisik').val();
  var suhu                   = $('#suhu','#_frm_pemeriksaan_fisik').val();
  var kulit                  = $('#kulit','#_frm_pemeriksaan_fisik').val();
  var sistimlimfatik         = $('#sistimlimfatik','#_frm_pemeriksaan_fisik').val();
  var kelenjertiroid         = $('#kelenjertiroid','#_frm_pemeriksaan_fisik').val();
  var lainpemeriksaanfisik   = $('#lainpemeriksaanfisik','#_frm_pemeriksaan_fisik').val();

  var pemeriksaangigi        = $('#periksagigi','#_frm_pemeriksaan_gigi').val();

  var frekuensipernapasan    = $('#frekuensipernapasan','#_frm_pernapasan').val();
  var trakhea                = $('#trakhea','#_frm_pernapasan').val();
  var perkusi                = $('#perkusi','#_frm_pernapasan').val();

  var tekanandarah           = $('#tekanandarah','#_frm_kardiovaskuler').val();
  var nadi                   = $('#nadi','#_frm_kardiovaskuler').val();
  var nadiperifier           = $('#nadiperifier','#_frm_kardiovaskuler').val();
  var vena                   = $('#vena','#_frm_kardiovaskuler').val();
  var edema                  = $('#edema','#_frm_kardiovaskuler').val();
  var murmur                 = $('#murmur','#_frm_kardiovaskuler').val();

  var mulut                   = $('#mulut','#_frm_saluran_cerna').val();
  var hati                    = $('#hati','#_frm_saluran_cerna').val();
  var limpa                   = $('#limpa','#_frm_saluran_cerna').val();
  var masa                    = $('#masa','#_frm_saluran_cerna').val();
  var cernalain               = $('#cernalain','#_frm_saluran_cerna').val();

  var labor                   = $('#labor','#_frm_penunjang').val();
  var radiologi               = $('#radiologi','#_frm_penunjang').val();
  var ecg                     = $('#ecg','#_frm_penunjang').val();
  var audiometri              = $('#audiometri','#_frm_penunjang').val();
  var pemeriksaanlain         = $('#pemeriksaanlain','#_frm_penunjang').val();

  var status                  = $('#status','#_frm_status').val();
  var catatanstatus           = $('#catatanstatus','#_frm_status').val();

  var statuskesimpulan        = $('#statuskesimpulan','#_frm_kesimpulan').val();
  var cathasil                = $('#cathasil','#_frm_kesimpulan').val();
  

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
                  ketotheranamnesa:ketotheranamnesa,
                  exercise:exercise,
                  ketexercise:ketexercise,
                  cigarettes:cigarettes,
                  ketcigarettes:ketcigarettes,
                  alcoholic:alcoholic,
                  ketalcoholic:ketalcoholic,
                  medication:medication,
                  ketmedication:ketmedication,
                  operations:operations,
                  ketoperations:ketoperations,
                  famdiabetes:famdiabetes,
                  ketfamdiabetes:ketfamdiabetes,
                  famhypertension:famhypertension,
                  ketfamhypertension:ketfamhypertension,
                  famheart:famheart,
                  ketfamheart:ketfamheart,
                  famtbc:famtbc,
                  ketfamtbc:ketfamtbc,
                  famkidney:famkidney,
                  ketfamkidney:ketfamkidney,
                  famasthma:famasthma,
                  ketfamasthma:ketfamasthma,
                  fampsychiatric:fampsychiatric,
                  ketfampsychiatric:ketfampsychiatric,
                  famepilepsy:famepilepsy,
                  ketfamepilepsy:ketfamepilepsy,
                  famcancer:famcancer,
                  ketfamcancer:ketfamcancer,
                  famstroke:famstroke,
                  ketfamstroke:ketfamstroke,
                  keadaanumum:keadaanumum,
                  tinggibadan:tinggibadan,
                  beratbadan:beratbadan,
                  suhu:suhu,
                  kulit:kulit,
                  sistimlimfatik:sistimlimfatik,
                  kelenjertiroid:kelenjertiroid,
                  lainpemeriksaanfisik:lainpemeriksaanfisik,
                  pemeriksaangigi:pemeriksaangigi,
                  frekuensipernapasan:frekuensipernapasan,
                  trakhea:trakhea,
                  perkusi:perkusi,
                  tekanandarah:tekanandarah,
                  nadi:nadi,
                  nadiperifier:nadiperifier,
                  vena:vena,
                  edema:edema,
                  murmur:murmur,
                  mulut:mulut,
                  hati:hati,
                  limpa:limpa,
                  masa:masa,
                  cernalain:cernalain,
                  labor:labor,
                  radiologi:radiologi,
                  ecg:ecg,
                  audiometri:audiometri,
                  pemeriksaanlain:pemeriksaanlain,
                  status:status,
                  catatanstatus:catatanstatus,
                  statuskesimpulan:statuskesimpulan,
                  cathasil:cathasil
                },
          url: APP_URL+'/hasilmcu/ubahanamnesa',
          type: "PATCH",
          dataType: 'json',
          success: function (data) {
                  
               alert(data.success);
              
          },
          error: function (data) {
              console.log('Error:', data);
              
          }
  });

}
//end function simpan anamnesa


//select NOT IN WHERE
// DB::table('users')
//     ->select('username', 'firstname')
//     ->whereNotIn('id', function($query) { 
//                 $query->table('course_enroles')
//                       ->select('user_id')
//                       ->where('course_id', '=', 1); })
//     ->get();



// DB::table('user')                 
//   ->select('id','name')
//   ->whereNotIn('id', DB::table('curses')->select('id_user')->where('id_user', '=', $id)->get()->toArray())
//   ->get();


// <img src="{{asset('assets/images/').'/'.$imgsrc}}">