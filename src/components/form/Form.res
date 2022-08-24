@react.component
let make = (~userHistory, ~setUserHistory, ~setExpense, ~setIncome, ~income, ~expense) => {
  let handleSubmit = event => {
    ReactEvent.Form.preventDefault(event)
    let newComment: string = ReactEvent.Form.target(event)["comment"]["value"]
    let newAmount: float = float_of_string(ReactEvent.Form.target(event)["amount"]["value"])

    setUserHistory(_ =>
      userHistory->Js.Array2.concat([
        {
          "comment": newComment,
          "amount": newAmount,
        },
      ])
    )
    newAmount >= 0.0 ? setIncome(_ => income +. newAmount) : setExpense(_ => expense +. newAmount)
  }

  <>
    <div>
      <form className="transaction-form" onSubmit={handleSubmit}>
        <h2 className="heading"> {React.string("Add new transaction")} </h2>
        <input type_="number" step={0.01} name="amount" placeholder="Enter a value" required=true />
        <input type_="text" name="comment" placeholder="Enter a comment" required=true />
        <button className="button-primary"> {React.string("Add transaction")} </button>
      </form>
    </div>
  </>
}
