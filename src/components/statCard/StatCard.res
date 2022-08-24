@react.component
let make = (~heading: string, ~value: float) => {
  <>
    <div className="stat-card">
      <p className="stat-heading"> {heading->React.string} </p>
      <h1 className="stat-value-green"> {value->Belt.Float.toString->React.string} </h1>
    </div>
  </>
}
