<?php

namespace Database\Factories;

use App\Models\Booking;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class BookingFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Booking::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'product_id' => $this->faker->numberBetween(1,40),
            'product_size' => $this->faker->numberBetween(1,80),
            'tenure' => $this->faker->randomNumber(1),
            'total_rent' => $this->faker->randomElement(['190000','120000','170000','130000','140000']),
        ];
    }

    
    
}
