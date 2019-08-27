defmodule Example2Web.FeedChannel do
  use Phoenix.Channel

  alias Example2.Activity

  def join("feed", _params, socket) do
    {:ok, socket}
  end

  def handle_in("fetch", params, socket) do
    payload = %{activities: all_activities(params)}

    # TODO: This is not replying to the fetch command correctly, causing a crash. Return a successful
    # response so that the client is responded to with the payload above.
    {:reply, {:ok, payload}, socket}
  end

  # TODO: The function for create_activity is purposefully left out. Try implementing it to these specs:
  #   * Accept the params from the user
  #   * Create the Activity using the context API only (don't reach into the database layer directly)
  #   * If successful, return a successful reply with the activity
  #   * If error, reply with some message indicating that there's invalid data. This can be done with
  #     :error status instead of :ok
  #   * Fix the error that will come up after you do this (due to missing occurred_at). Do this completely
  #     in the Channel by add a valid DateTime to the params map.

  # def handle_in("create_activity", params, socket) do

  #   changeset = Activity.Activity.changeset(%Activity.Activity{}, params)
  #   activity = Repo.insert!(changeset)
  #   response = Live.render("index.json", %{activity: activity})
  #   {:reply, {:ok, response}, socket}
  # en

  # With the broadcast is this what's going on under the hood in liveview? It it just broadcasting to our mounts?
  # What do you think about jr's who've learned elixir on their own and have a few projects under their belts/good fundelemtals but no real life production experience with a abig company
  # Would you give em a chance? Or do ya recommend they go get production experience in another language and come back?
  # Has your company hired jrs for elixir roles devs with good fundementals but no production experience? What made ya take a chance on em?  What are the signs ya look for?  And How have they performed?
  # Support Engineering Roles...

  defp all_activities(params) do
    Activity.all(params)
  end
end
