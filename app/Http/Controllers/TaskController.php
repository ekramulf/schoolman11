<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TaskController extends Controller
{
        public function home()
        {
            return view('home');
        }

        public function create()
        {
            return view('create');
        }

        public function edit()
        {
            return view('edit');
        }
            
        public function delete()
        {
            return view('delete');
        }        

        public function about()
        {
            return view('about');
        }        

        public function getcourse(Request $request)
        {
            $devid = $request->input('id');
            //$ipAddress = $request->ip();

            $class_sub = DB::select('SELECT subcd, subsession, teachid FROM classes  WHERE devid = ?', [$devid]);

            return response()->json([$class_sub]);
        }

        public function postat(Request $request)
        {
            $mystring = $request->input('thename');
            $ipAddress = $request->ip();

            //$class_sub = DB::select('SELECT teachid, devid FROM teachers  WHERE devid = ?', [$ipAddress]);

            //$teacherid = DB::table('teachers')->where('devid', $ipAddress)->value('teachcode');

            //if (DB::table('teachers')->where('devid', $ipAddress)->exists())
            //{
                if (strlen($mystring) > 0)
                    $strarr = str_getcsv($mystring);
                    $arrcount = count($strarr);
                    for ($i = 5; $i < $arrcount; $i++)
                    {                                    
                        DB::insert('INSERT INTO studattnds (devid,teachid,subcode,sessionyr,attndate,studid) VALUES (?,?,?,?,?,?)', [$strarr[0], $strarr[1],$strarr[2],$strarr[3],$strarr[4],$strarr[$i]]);
                    }                
            //}

            return "<h2>Done</h2>";
        }
}