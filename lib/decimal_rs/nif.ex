defmodule DecimalRs.Nif do
  use Rustler, otp_app: :decimal_rs, crate: "decimal_rs"

  # When your NIF is loaded, it will override this function.
  def powd(_base, _exponent), do: :erlang.nif_error(:nif_not_loaded)
end
