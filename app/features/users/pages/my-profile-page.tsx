import { redirect } from "react-router";
import { Route } from "./+types/my-profile-page";
import { makeSSRClient } from "~/supa-client";
import { getUserById } from "../queries";

export async function loader({ request }: Route.LoaderArgs) {
  const { client } = makeSSRClient(request);
  const {
    data: { user },
  } = await client.auth.getUser();
  if (user) {
    const profile = await getUserById(client, { id: user.id });
    console.log(profile, "profile");
    return redirect(`/users/${encodeURIComponent(profile.username)}`);
  }
  return redirect("/auth/login");
}