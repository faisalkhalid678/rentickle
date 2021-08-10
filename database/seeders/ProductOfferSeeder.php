<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product_offer;

class ProductOfferSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product_offer::factory()
            ->count(40)
            ->create();
    }
}
