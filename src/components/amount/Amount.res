@module external cssModule: {..} = "../styles/amount.module.css"
let styles: {..} = cssModule["default"]

@react.component
let make = (~heading: string, ~value: float) => {
  <>
    <div className={styles["amount"]}>
      <p className={styles["amount-heading"]}> {heading->React.string} </p>
      <h1 className={value >= 0.0 ? styles["income"] : styles["expense"]}>
        {React.string(`$ ${Belt.Float.toString(value)}`)}
      </h1>
    </div>
  </>
}
