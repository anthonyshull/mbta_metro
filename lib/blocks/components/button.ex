defmodule Blocks.Components.Button do
  @moduledoc """
  Renders a button.

  ## Examples

    <.button>Send!</.button>
    <.button phx-click="go" class="ml-2">Send!</.button>
  """

  use Phoenix.Component

  attr :type, :string, default: nil
  attr :class, :string, default: nil
  attr :rest, :global, include: ~w(disabled form name value)

  slot :inner_block, required: true

  def button(assigns) do
    ~H"""
    <button
      type={@type}
      class={[
        "text-base font-normal rounded cursor-pointer inline-block px-4 py-2 text-center select-none align-middle whitespace-nowrap border border-transparent bg-brand text-white",
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
