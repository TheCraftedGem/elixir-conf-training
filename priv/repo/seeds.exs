# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Example2.Repo.insert!(%Example2.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Example2.Mock.ActivityCreator.create_random_activity()
Example2.Mock.ActivityCreator.create_random_activity()
Example2.Mock.ActivityCreator.create_random_activity()
