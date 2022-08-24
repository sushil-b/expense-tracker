%%raw(`import './App.css';`)

let initialUserHistory: array<UserHistory.userHistory> = [
  {"comment": "Start adding expenses to show here", "amount": 0.0},
]

let initialBalance: float = 0.0
let initialExpense: float = 0.0
let initialIncome: float = 0.0

@react.component
let make = () => {
  let (userHistory, setUserHistory) = React.useState(_ => initialUserHistory)
  let (balance, setBalance) = React.useState(_ => initialBalance)
  let (expense, setExpense) = React.useState(_ => initialExpense)
  let (income, setIncome) = React.useState(_ => initialIncome)

  React.useEffect2(() => {
    setBalance(_ => income +. expense)
    None
  }, (income, expense))

  <>
    <div className="App">
      <div className="container">
        <h1 className="logo"> {React.string("Expense Tracker")} </h1>
        <div className="stats">
          <StatCard heading={"Total Balance"} value={balance} />
          <StatCard heading={"Total Income"} value={income} />
          <StatCard heading={"Total Expense"} value={expense} />
        </div>
        <Form userHistory setUserHistory expense setExpense income setIncome />
        <History userHistory />
      </div>
    </div>
  </>
}
