<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\Add_to_cart;

class AddToCartController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {
        $rules = [
            'product_id' => 'required',
            'tenure' => 'numeric|required'
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
        $product_data = $product->where('id', $request->product_id)->first();
        if ($product_data !== null) {
            $add_to_cart = new Add_to_cart();

            $add_to_cart->product_id = $request->product_id;
            $add_to_cart->product_size_id = isset($request->product_size) ? $request->product_size : 0;
            $add_to_cart->tenure = isset($request->tenure) && is_numeric($request->tenure) ? $request->tenure : 0;
            $add_to_cart->total_rent = isset($request->tenure) && is_numeric($request->tenure) ? $request->tenure + $product_data->rent : 0;
            $add_to_cart->offer_id = isset($request->offer_id) ? $request->offer_id : 0;
            if ($add_to_cart->save()) {
                $return = array(
                    'status' => '200',
                    'message' => 'Add to Cart Successfully',
                    'data' => []
                );
            } else {
                $return = array(
                    'status' => '400',
                    'message' => 'Product Not added to cart.',
                    'data' => []
                );
            }
        } else {
            $return = array(
                'status' => '400',
                'message' => 'Product Not Exist',
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
