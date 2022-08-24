@react.component
let make = (~amount, ~comment) => {
  <div className="transaction-row">
    <div className="item-name">
      <div className={amount >= 0.0 ? "square-green" : "square-red"} />
      <p> {React.string(comment)} </p>
    </div>
    <p> {React.string(`$ ${Belt.Float.toString(amount)}`)} </p>
  </div>
}
