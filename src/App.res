%%raw(`import './App.css';`)

@react.component
let make = () => {
  let (transaction, setTransaction) = React.useState(_ => [
    {"comment": "Start adding expenses to show here", "amount": 0.0},
  ])

  let balance = Belt.Array.reduce(transaction, 0.0, (previousBalance, currentBalance) => {
    previousBalance +. currentBalance["amount"]
  })
  let expense = Belt.Array.reduce(transaction, 0.0, (previousExpense, currentExpense) => {
    currentExpense["amount"] < 0.0 ? previousExpense +. currentExpense["amount"] : previousExpense
  })

  let income = Belt.Array.reduce(transaction, 0.0, (previousIncome, currentIncome) => {
    currentIncome["amount"] > 0.0 ? previousIncome +. currentIncome["amount"] : previousIncome
  })

  <>
    <div className="App">
      <div className="container">
        <h1 className="heading"> {React.string("Expense Tracker")} </h1>
        <div className="stats">
          <Amount heading={"Total Balance"} value={balance} />
          <Amount heading={"Total Income"} value={income} />
          <Amount heading={"Total Expense"} value={expense} />
        </div>
        <AddTransactionForm transaction setTransaction />
        <History transaction />
      </div>
    </div>
  </>
}
