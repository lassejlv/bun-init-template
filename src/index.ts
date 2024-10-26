import { Hono } from "hono";
import { env } from "./lib/env";

const app = new Hono();

app.get("/", c => c.text("Hello World!"))


Bun.serve({ port: Number(env.PORT), fetch: app.fetch })
