@react.component
let make = () => {
  <>
    <div className="history">
      <h2 className="heading"> {React.string("History")} </h2>
      <div className="transaction-row">
        <div className="item-name">
          <div className="square-green" /> <p> {React.string("Coffee")} </p>
        </div>
        <p> {React.string("-40")} </p>
      </div>
    </div>
  </>
}
