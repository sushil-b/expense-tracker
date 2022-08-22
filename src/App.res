%%raw(`import './App.css';`)

@react.component
let make = () => {
  <>
    <div className="App">
      <div className="container">
        <h1 className="logo"> {React.string("Expense Tracker")} </h1>
        <div className="stats"> <Stat /> <Stat /> <Stat /> </div>
        <Form />
        <History />
      </div>
    </div>
  </>
}
