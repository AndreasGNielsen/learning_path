SELECT 
id as payment_id, 
orderid as order_id, 
paymentmethod payment_method, 
status, 
amount/100 as amount,
created as created_at, 

 FROM {{ source('stripe', 'payment') }}