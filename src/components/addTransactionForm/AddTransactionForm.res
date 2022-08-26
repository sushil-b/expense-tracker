@module external cssModule: {..} = "../styles/addTransactionForm.module.css"
let styles: {..} = cssModule["default"]

@react.component
let make = (~transactions: array<Transaction.t>, ~setTransactions) => {
  let handleSubmit = event => {
    ReactEvent.Form.preventDefault(event)
    let newComment: string = ReactEvent.Form.target(event)["comment"]["value"]
    let newAmount: float = float_of_string(ReactEvent.Form.target(event)["amount"]["value"])

    setTransactions(_ =>
      transactions->Js.Array2.concat([
        {
          "comment": newComment,
          "amount": newAmount,
        },
      ])
    )
  }

  <>
    <div>
      <form className={styles["transaction-form"]} onSubmit={handleSubmit}>
        <h2 className="heading"> {React.string("Add new transaction")} </h2>
        <input type_="number" step={0.01} name="amount" placeholder="Enter a value" required=true />
        <input type_="text" name="comment" placeholder="Enter a comment" required=true />
        <button className={styles["add-transaction-button"]}>
          {React.string("Add transaction")}
        </button>
      </form>
    </div>
  </>
}
