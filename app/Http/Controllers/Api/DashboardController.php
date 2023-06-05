<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Supplier;

class DashboardController extends Controller
{
    public function index()
    {
        $data['category_count'] = Category::select('id')->where('status',1)->count();
        $data['product_count'] = Product::select('id')->where('status',1)->count();
        $data['supplier_count'] = Supplier::select('id')->count();
        $data['purchase_count'] = Purchase::select('id')->count();

        return response()->json([
            'data'  => $data
        ], 200);
    }
    
}
