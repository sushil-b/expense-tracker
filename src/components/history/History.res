@react.component
let make = (~transactions: array<Transaction.t>) => {
  <>
    <div>
      <h2 className="heading"> {React.string("History")} </h2>
      {transactions
      ->Belt.Array.map(transaction =>
        <TransactionCmp amount={transaction["amount"]} comment={transaction["comment"]} />
      )
      ->React.array}
    </div>
  </>
}
