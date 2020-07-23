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
          max_price = 50tez
        ]
  2n -> record [
          current_stock = 20n;
          max_price = 75tez
        ]
]

function buy_spark (const spark_kind_index : nat; var spark_storage : spark_storage) : return is
  ((nil : list (operation)), spark_storage)
// real entrypoint that re-routes the flow based
// on the action provided
function main (const parameter : unit; const spark_storage : spark_storage) : return is
 ((nil : list (operation)), spark_storage) (
  end)
