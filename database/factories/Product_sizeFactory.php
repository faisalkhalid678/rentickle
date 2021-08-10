<?php

namespace Database\Factories;

use App\Models\Product_size;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class Product_sizeFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product_size::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => $this->faker->numberBetween(1,40),
            'product_size' => $this->faker->randomElement(['6 * 6','5 * 5','7 * 7','4 * 4','5 * 5']),
            
        ];
    }

    
    
}
