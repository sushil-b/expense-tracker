@react.component
let make = (~userHistory: array<Transaction.t>) => {
  <>
    <div>
      <h2 className="heading"> {React.string("History")} </h2>
      {React.array(
        Belt.Array.map(userHistory, row => {
          <TransactionCmp amount={row["amount"]} comment={row["comment"]} />
        }),
      )}
    </div>
  </>
}
