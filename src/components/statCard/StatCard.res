@react.component
let make = (~heading: string, ~value: float) => {
  <>
    <div className="stat-card">
      <p className="stat-heading"> {heading->React.string} </p>
      <h1 className={value >= 0.0 ? "stat-value-green" : "stat-value-red"}>
        {React.string(`$ ${Belt.Float.toString(value)}`)}
      </h1>
    </div>
  </>
}
