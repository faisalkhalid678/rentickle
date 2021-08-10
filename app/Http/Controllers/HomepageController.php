<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Booking;
use App\Models\Product;
use DB;

class HomepageController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $category = new Category();
        $categories = $category->where('status', 'Active')->get()->toArray();
        if (!empty($categories)) {
            foreach ($categories as $key => $category) {
                $categories[$key]['category_image'] = url('/') . 'public/categories/' . $category['category_image'];
            }
        }
        $trending_products = array();
        $recent_viewed_products = array();
        
        $booking = new Booking();
        $product = new Product();
        $booking_data = $booking->select('product_id', DB::raw('COUNT(product_id) AS product_count'))->groupBy('product_id')->orderBy('product_count', 'desc')->limit(4)->get()->toArray();
        if (!empty($booking_data)) {
            foreach ($booking_data as $book) {
               
               $product_data = $product->where('id',$book['product_id'])->first();
               
               if($product_data !== null){
                   $product_data = $product_data->toArray();
                   $product_data['product_image'] = url('/').'public/products/'.$product_data['product_image'];
                   $trending_products[] = $product_data;
               }
               
            }
        }
        
        $viewed_product_time = $product->orderBy('viewed_time', 'desc')->limit(4)->get()->toArray();
        if (!empty($viewed_product_time)) {
            foreach($viewed_product_time as $pro){
                $pro['product_image'] = url('/').'public/products/'.$pro['product_image'];
                $recent_viewed_products[] = $pro;
            }
        }
        
        
        



        $main_array = array(
            'categories' => $categories,
            'trending_products' => $trending_products,
            'recent_viewed_products' => $recent_viewed_products,
        );

        $return = array(
            'status' => '200',
            'message' => 'Homepage Data',
            'data' => $main_array
        );
        return response()->json($return);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //
    }

}
