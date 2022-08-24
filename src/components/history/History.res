@react.component
let make = (~userHistory: array<UserHistory.userHistory>) => {
  <>
    <div className="history">
      <h2 className="heading"> {React.string("History")} </h2>
      {React.array(
        Belt.Array.map(userHistory, row => {
          <div className="transaction-row">
            <div className="item-name">
              <div className={row["amount"] >= 0.0 ? "square-green" : "square-red"} />
              <p> {React.string(row["comment"])} </p>
            </div>
            <p> {React.string(`$ ${Belt.Float.toString(row["amount"])}`)} </p>
          </div>
        }),
      )}
    </div>
  </>
}
