

## API DOCUMENTATION

1. Auth login :  POST (http://127.0.0.1:8000/api/auth/login)   ||  Request Body {"email": "admin@gmail.com, "password" : "admin123"}
 

 // After login

	1. Profile : GET (http://127.0.0.1:8000/api/me)
	2. Logout : GET (http://127.0.0.1:8000/api/logout)

	//categories
	3.Get all categories : GET (http://127.0.0.1:8000/api/categories)
	4. Store category : POST (http://127.0.0.1:8000/api/categories)    ||  Request Body { "name" : "category1", "status" : 1 }
	5. Category Get by ID : GET (http://127.0.0.1:8000/api/categories/{id}/edit)
	6. Update category : PUT (http://127.0.0.1:8000/api/categories/{id})  ||  Request Body { "name" : "category1", "status" : 1 }
	7. Delete category : DELETE (http://127.0.0.1:8000/api/categories/{id})

	//products
	8.Get all products : GET (http://127.0.0.1:8000/api/products)
	9. Store Product : POST (http://127.0.0.1:8000/api/products)  ||  Request Body { "code" : "pr001", "category" : 1, "name" : "category1", "stock_qty": 15, 
		"price" : 150, "status" : 1 }
	10. Product Get by ID : GET (http://127.0.0.1:8000/api/products/{id}/edit)
	11. Update Product : PUT (http://127.0.0.1:8000/api/products/{id})  ||  Request Body { "code" : "pr001", "category" : 1, "name" : "category1", "stock_qty": 15, 		"price" : 150, "status" : 1 }
	12. Delete Product : DELETE (http://127.0.0.1:8000/api/products/{id})
	
	//suppliers
	13.Get all suppliers : GET (http://127.0.0.1:8000/api/suppliers)
	14. Store Supplier : POST (http://127.0.0.1:8000/api/suppliers)  ||  Request Body { "name" : "ABCD", "phone" : "01XXXXXXXXX", "address" : "Dhaka" }
	15. Supplier Get by ID : GET (http://127.0.0.1:8000/api/suppliers/{id}/edit)
	16. Update Supplier : PUT (http://127.0.0.1:8000/api/suppliers/{id})  ||  Request Body { "name" : "ABCD", "phone" : "01XXXXXXXXX", "address" : "Dhaka" }
	17. Delete Supplier : DELETE (http://127.0.0.1:8000/api/suppliers/{id})

	//purchase list
	13.Get all purchases : GET (http://127.0.0.1:8000/api/purchases)
	14. Store Purchase : POST (http://127.0.0.1:8000/api/purchases)  ||  Request Body { "invoice_no" : "INVC0123456789", "supplier" : 2, 
	"purchase_date": "2023-05-10 13:00:00", "note" : "this is a note", 
	"productsRow" : [ { "product_id": 4, "product_name" : "Headphone", product_price: "1200.00" , "product_qty" : 1, "product_stock" : 2, "product_total": "1200.00"}] }
	15. Purchase Get by ID : GET (http://127.0.0.1:8000/api/purchases/{id}/edit)
	16. Update Purchase : PUT (http://127.0.0.1:8000/api/purchases/{id})
	17. Delete Purchase : DELETE (http://127.0.0.1:8000/api/purchases/{id})

	
	
