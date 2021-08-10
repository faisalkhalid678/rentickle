<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'category_id' => $this->faker->numberBetween(1,20),
            'product_name' => $this->faker->word(),
            'product_image' => $this->faker->randomElement(['product1.png','product2.png','product3.png','product4.png','product5.png']),
            'rent' => $this->faker->randomElement(['20000','30000','25000','19000','28000']),
            'refundable_deposit' => $this->faker->randomElement(['50000','45000','57000','63000','61000']),
            'viewed_time' => $this->faker->unique(true)->randomElement(['2021-08-10 12:01:00','2021-08-10 12:02:00','2021-08-10 12:03:00','2021-08-10 12:04:00','2021-08-10 12:05:00','2021-08-10 12:06:00','2021-08-10 12:07:00','2021-08-10 12:08:00','2021-08-10 12:09:00','2021-08-10 12:10:00','2021-08-10 12:11:00','2021-08-10 12:12:00','2021-08-10 12:13:00','2021-08-10 12:14:00','2021-08-10 12:15:00','2021-08-10 12:16:00','2021-08-10 12:17:00','2021-08-10 12:18:00','2021-08-10 12:19:00','2021-08-10 12:20:00']),
        ];
    }

    
    
}
