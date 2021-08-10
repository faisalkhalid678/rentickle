<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\Product_offer;
use App\Models\Product_rating;
use App\Models\Product_review;
use App\Models\Product_size;
use DB;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
       $rules = [
            'product_id' => 'required',
        ];
        //Check validation for the inputs and return response in case error occured
        $validate = $this->checkValidation($request, $rules);
        if ($validate) {
            $errors = $validate;
            $return = array(
                'status' => '400',
                'message' => 'validation error occured',
                'errors' => $errors,
                'data' => []
            );
            return response()->json($return);
        }
        
        $product = new Product();
        $product_data = array();
        $product_detail = $product->where('id',$request->product_id)->first();
        if($product_detail !== null){
            $product_detail = $product_detail->toArray();
            $product_detail['product_image'] = url('/').'public/products/'.$product_detail['product_image'];
            $product_data = $product_detail;
            //Product offer Section
            $product_offer = new Product_offer();
            $product_offer_data = $product_offer->where('product_id',$request->product_id)->first();
            $product_data['product_offer'] = array();
            if($product_offer_data !== null){
                $product_data['product_offer'] = $product_offer_data->toArray();
            }
            
            //Product Rating Section
            $product_rating_obj = new Product_rating();
            
            $product_rating = $product_rating_obj->select(DB::raw('AVG(rating) AS product_rating'), DB::raw('COUNT(product_id) AS rating_count'))->where('product_id',$request->product_id)->first();
            $product_data['product_rating'] = 0;
            $product_data['total_ratings'] = 0;
            if($product_rating !== null){
                
            $product_data['product_rating'] = $product_rating->product_rating;
            $product_data['total_number_of_ratings'] = $product_rating->rating_count;
            }
            
            $product_review_obj = new Product_review();
            $product_reviews = $product_review_obj->where('product_id',$request->product_id)->count();
            $product_data['total_reviews'] = $product_reviews;
            $product_data['product_sizes'] = array();
            $product_size_obj = new Product_size();
            $product_size_detail = $product_size_obj->where('product_id',$request->product_id)->get()->toArray();
            if(!empty($product_size_detail)){
                $product_data['product_sizes'] = $product_size_detail;
            }
            
            $return = array(
            'status' => '200',
            'message' => 'Product Detail',
            'data' => $product_data
        );
        }else{
            $return = array(
            'status' => '400',
            'message' => 'Product Not Found',
            'data' => []
        );
        }
        
        
        return response()->json($return);
        
    }
    
    
    //This Function checks the form validation and if fails return validation errors...
    public function checkValidation($request, $rules) {
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errors = $validator->errors();
            return $errors;
        } else {
            return False;
        }
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
    public function show($id)
    {
        //
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
