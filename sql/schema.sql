create extension if not exists pgcrypto;
create table if not exists campaigns (id uuid primary key default gen_random_uuid(), title text not null, premise text not null, state jsonb not null default '{}'::jsonb, summary text not null default '', created_at timestamptz not null default now());
create table if not exists turns (id bigint generated always as identity primary key, campaign_id uuid not null references campaigns(id) on delete cascade, player_action text not null, narration text not null, state_delta jsonb not null, created_at timestamptz not null default now());
create index if not exists turns_campaign_id_id on turns(campaign_id,id desc);
alter table campaigns enable row level security;
alter table turns enable row level security;
