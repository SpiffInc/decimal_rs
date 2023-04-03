defmodule DecimalRs do
  alias DecimalRs.Nif

  def pow(%Decimal{} = base, %Decimal{} = exponent) do
    Decimal.to_string(base, :scientific)
    |> Nif.powd(Decimal.to_string(exponent, :scientific))
    |> Decimal.new()
  end
end
