defmodule Storybook.Live.Index do
  @moduledoc false

  use PhoenixStorybook.Index

  def folder_name, do: "Live"
  def folder_icon, do: {:hero, "bolt"}
  def folder_open?, do: false

  def entry("map"), do: [name: "Map"]
end