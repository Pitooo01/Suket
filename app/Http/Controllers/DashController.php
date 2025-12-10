<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use Carbon\Carbon;

class DashController extends Controller
{
    public function index()
    {
    	
               

                     //dd($dibuatperawat);
        return view('dash.index');
    }


    public function cari(Request $request)
    {
        $month  = $request->bulan;
        $year   = $request->tahun;

        $diabet = DB::table('family_history')
                     ->select(DB::raw('count(Diabetes) as diabet'))
                     ->where('Diabetes', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakdiabet = DB::table('family_history')
                     ->select(DB::raw('count(Diabetes) as diabet'))
                     ->where('Diabetes', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $hypertension = DB::table('family_history')
                     ->select(DB::raw('count(Hypertension) as hypertension'))
                     ->where('Hypertension', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakhypertension = DB::table('family_history')
                     ->select(DB::raw('count(Hypertension) as hypertension'))
                     ->where('Hypertension', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $heartdisease = DB::table('family_history')
                     ->select(DB::raw('count(Heartdisease) as heartdisease'))
                     ->where('Heartdisease', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakheartdisease = DB::table('family_history')
                     ->select(DB::raw('count(Heartdisease) as heartdisease'))
                     ->where('Heartdisease', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tuberculosis = DB::table('family_history')
                     ->select(DB::raw('count(Tuberculosis) as tuberculosis'))
                     ->where('Tuberculosis', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidaktuberculosis = DB::table('family_history')
                     ->select(DB::raw('count(Tuberculosis) as tuberculosis'))
                     ->where('Tuberculosis', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $kidneydisease = DB::table('family_history')
                     ->select(DB::raw('count(Kidneydisease) as kidneydisease'))
                     ->where('Kidneydisease', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakkidneydisease = DB::table('family_history')
                     ->select(DB::raw('count(Kidneydisease) as kidneydisease'))
                     ->where('Kidneydisease', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $asthma = DB::table('family_history')
                     ->select(DB::raw('count(Asthma) as asthma'))
                     ->where('Asthma', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakasthma = DB::table('family_history')
                     ->select(DB::raw('count(Asthma) as asthma'))
                     ->where('Asthma', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $psychiatric = DB::table('family_history')
                     ->select(DB::raw('count(Psychiatric) as psychiatric'))
                     ->where('Psychiatric', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakpsychiatric = DB::table('family_history')
                     ->select(DB::raw('count(Psychiatric) as psychiatric'))
                     ->where('Psychiatric', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();            

        $epilepsy = DB::table('family_history')
                     ->select(DB::raw('count(Epilepsy) as epilepsy'))
                     ->where('Epilepsy', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakepilepsy = DB::table('family_history')
                     ->select(DB::raw('count(Epilepsy) as epilepsy'))
                     ->where('Epilepsy', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $cancer = DB::table('family_history')
                     ->select(DB::raw('count(Cancer) as cancer'))
                     ->where('Cancer', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakcancer = DB::table('family_history')
                     ->select(DB::raw('count(Cancer) as cancer'))
                     ->where('Cancer', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $stroke = DB::table('family_history')
                     ->select(DB::raw('count(Stroke) as stroke'))
                     ->where('Stroke', '=', 'Y')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $tidakstroke = DB::table('family_history')
                     ->select(DB::raw('count(Stroke) as stroke'))
                     ->where('Stroke', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $dibuatperawat = DB::table('hasil_mcu_header')
                     ->select(DB::raw('count(RegID) as total'))
                     ->where('NA', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $belumkirimkedokter = DB::table('hasil_mcu_header')
                     ->select(DB::raw('count(RegID) as total'))
                     ->where('KirimKeDokter', '=', 'N')
                     ->where('NA', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();

        $belumverifikasidokter = DB::table('hasil_mcu_header')
                     ->select(DB::raw('count(RegID) as total'))
                     ->where('VerifikasiDokter', '=', 'N')
                     ->where('NA', '=', 'N')
                     ->whereMonth('created_at','=', $month)
                     ->whereYear('created_at','=', $year)
                     ->get();                    

        $hasil=[
                $diabet[0]->diabet,
                $hypertension[0]->hypertension,
                $heartdisease[0]->heartdisease,
                $tuberculosis[0]->tuberculosis,
                $kidneydisease[0]->kidneydisease,
                $asthma[0]->asthma,
                $psychiatric[0]->psychiatric,
                $epilepsy[0]->epilepsy,
                $cancer[0]->cancer,
                $stroke[0]->stroke,
               ];

        $hasiltidak=[
                $tidakdiabet[0]->diabet,
                $tidakhypertension[0]->hypertension,
                $tidakheartdisease[0]->heartdisease,
                $tidaktuberculosis[0]->tuberculosis,
                $tidakkidneydisease[0]->kidneydisease,
                $tidakasthma[0]->asthma,
                $tidakpsychiatric[0]->psychiatric,
                $tidakepilepsy[0]->epilepsy,
                $tidakcancer[0]->cancer,
                $tidakstroke[0]->stroke,
               ];

               

                     //dd($dibuatperawat);
        return view('dash.index',['hasil'=>$hasil,'hasiltidak'=>$hasiltidak,'bulan'=>$month,'tahun'=>$year,'dibuatperawat'=>$dibuatperawat,'belumkirimkedokter'=>$belumkirimkedokter,'belumverifikasidokter'=>$belumverifikasidokter,'year'=>$year]);
    }
}