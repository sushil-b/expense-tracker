@react.component
let make = () => {
  <>
    <div>
      <form className="transaction-form">
        <h2 className="heading"> {React.string("Add new transaction")} </h2>
        <input type_="number" placeholder="Enter a value" />
        <input type_="text" placeholder="Enter a comment" />
        <button className="button-primary"> {React.string("Add transaction")} </button>
      </form>
    </div>
  </>
}
