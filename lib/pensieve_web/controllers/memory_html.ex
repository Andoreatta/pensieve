defmodule PensieveWeb.MemoryHTML do
  use PensieveWeb, :html

  embed_templates "/memory_html/*"
  attr :memories, :list, required: true
  alias Pensieve.Memories.Memory

  def memory_inserted_at(%Memory{inserted_at: timestamp}) do
    Calendar.strftime(timestamp, "%m/%d/%Y %I:%M%p")
  end

  def information(assigns) do
    ~H"""
    <div class="italic mb-4">
      There are <%= length(@memories) %> memories in your Pensieve
    </div>
    """
  end

end
