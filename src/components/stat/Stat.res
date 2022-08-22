@react.component
let make = () => {
  <>
    <div className="stat-card">
      <p className="stat-heading"> {React.string("Current Balance")} </p>
      <h1 className="stat-value-green"> {React.string("$400")} </h1>
    </div>
  </>
}
