<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product_review;

class ProductReviewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Product_review::factory()
            ->count(30)
            ->create();
    }
}
