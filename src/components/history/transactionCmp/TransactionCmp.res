@module external cssModule: {..} = "../../styles/transactionCmp.module.css"
let styles: {..} = cssModule["default"]

@react.component
let make = (~amount: float, ~comment: string) => {
  <div className={styles["transaction-cmp"]}>
    <div className={styles["transaction"]}>
      <div className={amount >= 0.0 ? styles["bg-green"] : styles["bg-red"]} />
      <p className={styles["comment"]}> {React.string(comment)} </p>
    </div>
    <p className={styles["comment"]}> {React.string(`$ ${Belt.Float.toString(amount)}`)} </p>
  </div>
}
