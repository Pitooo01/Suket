@extends('layout.dashboard')

@section('title','Laporan Detail Riwayat Penyakit Keluarga')

@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta name="_base_url" content="{{ url('/') }}">
<form method="get" action="{{ url('/lapdetail/cetak') }}" target="_blank">
@csrf
<div class="card">
    <div class="card-body">
        <div class="w3-panel w3-aqua">
            <table border="0" width="100%">
                <tr>
                    <td width="10%">BULAN</td>
                    <td width="1%">:</td>
                    <td width="10%"><select id="bulan" name="bulan">
                          <option value="01">Januari</option>
                          <option value="02">Februari</option>
                          <option value="03">Maret</option>
                          <option value="04">April</option>
                          <option value="05">Mei</option>
                          <option value="06">Juni</option>
                          <option value="07">Juli</option>
                          <option value="08">Agustus</option>
                          <option value="09">September</option>
                          <option value="10">Oktober</option>
                          <option value="11">November</option>
                          <option value="12">Desember</option>
                          </select>
                      </td>
                      <td width="8%">TAHUN</td>
                      <td width="1%">:</td>
                      <td width="8%"><input name="tahun" id="tahun" type="text" value="{{ $year }}"></td>
                      <td><input type="submit" class="w3-button w3-blue" value="Cetak"></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</form>
@endsection