defmodule FileStoreWeb.UserView do
  use FileStoreWeb, :view

  def user_avatar(user, version \\ :original) do
    FileStore.Avatar.url({user.avatar, user}, :original)
  end
end
