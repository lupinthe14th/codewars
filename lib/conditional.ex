defmodule Conditional do
  def _if(nil, _, felse), do: felse.()
  def _if(false, _, felse), do: felse.()
  def _if(_, fthen, _), do: fthen.()
end
