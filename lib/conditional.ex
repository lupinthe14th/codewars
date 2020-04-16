defmodule Conditional do
  def _if(bool, fthen, _) when bool, do: fthen.()
  def _if(_, _, felse), do: felse.()
end
