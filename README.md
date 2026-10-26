# StoryForge

Backend-first AI text RPG MVP with persistent campaign memory and a Game Master.

## Setup

1. Create a local `.env` from `.env.example`.
2. Supply an OpenAI API key and the Supabase **server-side** service role key.
3. Run `npm install` and `npm run dev`.
4. Open http://localhost:3000.

Supabase project: `fjsxobyvimtffyrlzelm` (Singapore). Database tables `campaigns` and `turns` have already been created. Do not run `sql/schema.sql` again on the provisioned project.

## API

- `POST /api/campaigns` — title and premise
- `GET /api/campaigns/:id` — state and turn history
- `POST /api/campaigns/:id/turns` — player action and GM response

## Security and deployment

This is a development MVP, not a public-ready API. It uses a privileged server-side database credential and currently has no user authentication or rate limiting. Do not expose the backend publicly before adding authorization and atomic turn persistence. Netlify frontend integration is deferred.
