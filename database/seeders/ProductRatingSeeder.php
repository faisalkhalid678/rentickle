<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product_rating;

class ProductRatingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product_rating::factory()
            ->count(30)
            ->create();
    }
}
