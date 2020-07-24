// variant defining pseudo multi-entrypoint actions
type spark_supply is record [
  current_stock : nat;
  max_price     : tez
]

type spark_storage is map (nat, spark_supply)

type return is list (operation) * spark_storage

const spark_token : string = "Spark Token";


map [
  1n -> record [
          current_stock = 50n;
          //max_price = 50tez //we won't be selling Spark Token so for now I'll just comment this out for all to see for editing purproses. 
        ]
  2n -> record [
          current_stock = 20n;
          //max_price = 75tez// Once more we won't be selling
        ]
]
function deflate_spark (const paramter : unit; const spark_supply : spark_supply) : return is 
  block {
    // Let's just say that the deflation rate for now is 1%
    //spark_supply.current_stock = spark_supply.current_stock - (spark_supply.current_stock/100) 
    // I think if we were to make it so that transaction amounts that are multiples of a 100 trigger the deflationary function, 
    //and make it so that it gets rounded down, so 255 transaction amount would be be inputted as 200 in the deflationary function amd then only 
    //2% of tokens would be eliminated from the user's wallet.
function buy_spark (const spark_kind_index : nat; var spark_storage : spark_storage) : return is
  block {
    //retrieve the spark_kind from the contract's storage or fail
    const spark_kind : spark_supply =
      case spark_storage[spark_kind_index] of
        Some (king) ->
        None -> (failwith ("Unable to get Spark.") : spark_supply)
      end;
    // Decrease the stack by 1n, because we have just sold one 
    spark_kind.current_stock := abs (spark_kind.current_stock - 1n);

    // Update the storage with the refreshed spark_kind
    spark_storage[spark_kind_index] := spark_kind
  } with ((nil : list (operation)), spark_storage)
  ((nil : list (operation)), spark_storage)
// real entrypoint that re-routes the flow based
// on the action provided
function main (const parameter : unit; const spark_storage : spark_storage) : return is
 ((nil : list (operation)), spark_storage) (
  end)
