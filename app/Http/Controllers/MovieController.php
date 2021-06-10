<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Movies;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $movie =  DB::select('select status from service_actions where id=1  ')[0];
        $data['serv'] = (array)$movie;
        return view('welcome' , $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($genre)
    {


        $service_actions =  DB::select('select status from service_actions where id=1  ')[0];

        if($service_actions->status=='enable'){
            $data =  DB::select('select id from genres where title="'.$genre.'" ');
            if(!empty($data)){
                $movie =  DB::select('select id,title,image,description from movies where genre='.$data[0]->id.' and status=0  ')[0];
                DB::table('movies')
                ->update(['status' => 0]);

                DB::table('movies')
                ->where('id', $movie->id)
                ->update(['status' => 1]);
            return response()->json($movie);
            }else{
                return response()->json([
                    'error' => 'Resource not found'
                ], 404);
            }
        }else{
            return response()->json([
                'error' => 'Service termporarly disabled'
            ], 404);
        }
        
    }

 public function changeStatus($status){
    DB::table('service_actions')
    ->where('id', 1)
    ->update(['status' => $status]);
    return redirect('/');

 }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
