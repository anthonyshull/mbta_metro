defmodule MbtaMetro do
  @moduledoc """
  A Phoenix LiveView component library.
  """

  defmacro __using__(_) do
    quote do
      import MbtaMetro.Components.{
        Accordion,
        Button,
        Feedback,
        Flash,
        Input,
        Modal,
        Table
      }
    end
  end
end
