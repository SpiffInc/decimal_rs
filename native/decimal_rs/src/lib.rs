/*
use rustler::NifStruct;

#[derive(NifStruct)]
#[module = "Decimal"]
struct ExDecimal {
    pub sign: i32,
    pub coef: i64,
    pub exp: u32,
}

impl ExDecimal {
  fn to_d(&self) -> Decimal {
    if self.sign > 0 {
        return Decimal::new(self.coef, self.exp);
    } else {
        return Decimal::new(self.coef * -1, self.exp);
    }
  }
}
*/

use rust_decimal::Decimal;
use rust_decimal::MathematicalOps;

#[rustler::nif]
fn powd(base: String, exponent: String) -> String {
    //println!("{:?} - {:?}", base, exponent);
    let base_d = Decimal::from_str_exact(&base).unwrap();
    let exponent_d = Decimal::from_str_exact(&exponent).unwrap();
    let result = base_d.powd(exponent_d);
    return result.to_string();
}

rustler::init!("Elixir.DecimalRs.Nif", [powd]);
