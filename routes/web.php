<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	return view('/login');
});




Route::get('/login', 'AuthController@login')->name('login');
Route::post('/postlogin', 'AuthController@postlogin');
Route::get('/logout', 'AuthController@logout');
Route::get('/invoice', 'InvoiceController@index');

//surat pengalaman
Route::get('/validation/{id}', 'SuratPengalamanController@valid');
Route::get('/pengalamankerja/kirimemailkemanager/{id}', 'SuratPengalamanController@kirim_email');
Route::get('/pengalamankerja/setujui/{id}', 'SuratPengalamanController@setujui_resign');
Route::get('/pengalamankerja/cetak/{id}', 'SuratPengalamanController@cetakpengalaman');

//surat keterangan
Route::get('/keteranganbekerja/email/{id}', 'SuratKeteranganBekerjaController@cetakketeranganbekerja');
Route::get('/keteranganbekerja/setujuisuketketerangan/{id}', 'SuratKeteranganBekerjaController@emailketeranganbekerja');
Route::get('/keteranganbekerja/batal/{id}', 'SuratKeteranganBekerjaController@batalkan');

//surat rekomendasi pinjaman bpr abs
Route::get('/rekomendasi/setujuisuketketerangan/{id}', 'SuratRekomendasiController@emailsuratrekomendasi');
Route::get('/rekomendasi/email/{id}', 'SuratRekomendasiController@cetakrekomendasi');
Route::get('/rekomendasi/batal/{id}', 'SuratRekomendasiController@batalkan');


Route::group(['middleware' => 'auth'], function () {
	Route::get('/dashboard', 'DashController@index');
	Route::get('/dashboard/cari', 'DashController@cari');


	//user
	Route::get('/user', 'UserController@index');
	Route::get('/user/create', 'UserController@create');
	Route::get('/user/edit/{id}', 'UserController@show');
	Route::post('/user', 'UserController@store');
	Route::delete('/user/{id}', 'UserController@destroy');
	Route::patch('/user/{id}', 'UserController@update');

	//alasanresign
	Route::get('/alasanresign', 'AlasanResignController@index');
	Route::get('/alasan/create', 'AlasanResignController@create');
	Route::post('/alasan/simpanalasan', 'AlasanResignController@store');
	Route::get('/tampilalasan', 'AlasanResignController@tampilalasan');
	Route::get('/alasan/edit/{id}', 'AlasanResignController@show');
	Route::patch('/alasan/ubahalasan', 'AlasanResignController@ubahalasan');
	Route::post('/alasan/hapus', 'AlasanResignController@hapusalasan');


	//keperluansurat (suket)
	Route::get('/keperluansurat', 'KeperluanSuratController@index');
	Route::get('/keperluan/create', 'KeperluanSuratController@create');
	Route::post('/keperluan/simpankeperluan', 'KeperluanSuratController@store');
	Route::get('/tampilkeperluan', 'KeperluanSuratController@tampilkeperluan');
	Route::get('/keperluan/edit/{id}', 'KeperluanSuratController@show');
	Route::patch('/keperluan/ubahkeperluan', 'KeperluanSuratController@ubahkeperluan');
	Route::post('/keperluan/hapus', 'KeperluanSuratController@hapuskeperluan');

	//surat pengalaman kerja
	Route::get('/pengalamankerja', 'SuratPengalamanController@index');
	Route::get('/pengalaman/create', 'SuratPengalamanController@create');
	Route::post('/pengalaman/simpanpengalaman', 'SuratPengalamanController@store');
	Route::get('/tampilpengalaman', 'SuratPengalamanController@tampilpengalaman');
	Route::get('/pengalaman/cetak/{id}', 'SuratPengalamanController@cetakpengalaman');
	Route::get('/pengalaman/edit/{id}', 'SuratPengalamanController@show');
	Route::patch('/pengalaman/ubahpengalaman', 'SuratPengalamanController@ubahpengalaman');
	Route::get('/pengalaman/kirimulangkekaryawan/{id}', 'SuratPengalamanController@kirimulangkekaryawan');

	// Route::post('/keperluan/hapus','SuratPengalamanController@hapuskeperluan');

	//surat keterangan bekerja
	Route::get('/keteranganbekerja', 'SuratKeteranganBekerjaController@index');
	Route::get('/keteranganbekerja/create', 'SuratKeteranganBekerjaController@create');
	Route::get('/keteranganbekerja/tampildata', 'SuratKeteranganBekerjaController@tampildata');
	Route::post('/keteranganbekerja', 'SuratKeteranganBekerjaController@store');
	Route::get('/keteranganbekerja/cetak/{id}', 'SuratKeteranganBekerjaController@cetakketeranganbekerja');
	Route::get('/keteranganbekerja/kirimemailkemanager/{id}', 'SuratKeteranganBekerjaController@kirimemailkemanager');
	Route::get('/keteranganbekerja/kirimulangkekaryawan/{id}', 'SuratKeteranganBekerjaController@kirimulangkekaryawan');

	//jabatan
	Route::get('/jabatan', 'JabatanController@index');
	Route::get('/jabatan/create', 'JabatanController@create');
	Route::post('/jabatan', 'JabatanController@store');
	Route::post('/jabatan/edit', 'JabatanController@edit');
	Route::get('/jabatan/edit/{id}', 'JabatanController@show');

	//rekomendasi
	Route::get('/rekomendasi', 'SuratRekomendasiController@index');
	Route::get('/rekomendasi/create', 'SuratRekomendasiController@create');
	Route::post('/rekomendasi', 'SuratRekomendasiController@store');
	Route::get('/rekomendasi/tampildata', 'SuratRekomendasiController@tampildata');
	Route::get('/rekomendasi/kirimemailkemanager/{id}', 'SuratRekomendasiController@kirimemailkemanager');
	Route::get('/rekomendasi/cetak/{id}', 'SuratRekomendasiController@cetakrekomendasi');
	Route::get('/rekomendasi/kirimulangkekaryawan/{id}', 'SuratRekomendasiController@kirimulangkekaryawan');

	//kpr
	Route::get('/kpr/email/{id}', 'KprController@cetakketerangankpr');
	Route::get('/kpr/setujuisuketketerangankpr/{id}', 'KprController@emailketerangankpr');
	Route::get('/kpr/batal/{id}', 'KprController@batalkan');
	Route::get('/kpr/cetak/{id}', 'KprController@cetakpengalaman');

	//nama bank
	Route::get('/namabank', 'NamaBankController@index');
	Route::get('/namabank/create', 'NamaBankController@create');
	Route::post('/namabank', 'NamaBankController@store');
	Route::post('/namabank/edit', 'NamaBankController@edit');
	Route::get('/namabank/edit/{id}', 'NamaBankController@show');

	//kpr
	Route::get('/kpr', 'KprController@index');
	Route::get('/kpr/create', 'KprController@create');
	Route::get('/kpr/tampildata', 'KprController@tampildata');
	Route::post('/kpr', 'KprController@store');
	Route::get('/kpr/cetak/{id}', 'KprController@cetakketerangankpr');
	Route::get('/kpr/kirimemailkemanager/{id}', 'KprController@kirimemailkemanager');
	Route::get('/kpr/kirimulangkekaryawan/{id}', 'KprController@kirimulangkekaryawan');

    Route::get('/internalmemo', 'ImController@index');
    Route::post('/manager/create', 'ImController@createManager')->name('manager.create');
});
