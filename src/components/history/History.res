@react.component
let make = (~userHistory: array<UserHistory.userHistory>) => {
  <>
    <div className="history">
      <h2 className="heading"> {React.string("History")} </h2>
      {React.array(
        Belt.Array.map(userHistory, row => {
          <TableRow amount={row["amount"]} comment={row["comment"]} />
        }),
      )}
    </div>
  </>
}
