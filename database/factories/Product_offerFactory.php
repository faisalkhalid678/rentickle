<?php

namespace Database\Factories;

use App\Models\Product_offer;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class Product_offerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product_offer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => $this->faker->unique(true)->numberBetween(1,40),
            'offer_name' => $this->faker->randomElement(['Eid Offer','14th Augush Offer','New Year Offer']),
            'offer_description' => $this->faker->sentence(15),
            'offer_percentage' => $this->faker->randomElement(['10','15','20']),
            
        ];
    }

    
    
}
