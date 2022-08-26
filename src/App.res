%%raw(`import './App.css';`)

let initialUserHistory: array<Transaction.t> = [
  {"comment": "Start adding expenses to show here", "amount": 0.0},
]

@react.component
let make = () => {
  let (userHistory, setUserHistory) = React.useState(_ => initialUserHistory)
  let (balance, setBalance) = React.useState(_ => 0.0)
  let (expense, setExpense) = React.useState(_ => 0.0)
  let (income, setIncome) = React.useState(_ => 0.0)

  React.useEffect2(() => {
    setBalance(_ => income +. expense)
    None
  }, (income, expense))

  <>
    <div className="App">
      <div className="container">
        <h1 className="heading"> {React.string("Expense Tracker")} </h1>
        <div className="stats">
          <Amount heading={"Total Balance"} value={balance} />
          <Amount heading={"Total Income"} value={income} />
          <Amount heading={"Total Expense"} value={expense} />
        </div>
        <AddTransactionForm userHistory setUserHistory expense setExpense income setIncome />
        <History userHistory />
      </div>
    </div>
  </>
}
