-- ====================================================================
-- SKEMA DATABASE SUPABASE UNTUK PROGRAM RISET VERTIKAL 7 KAIH
-- SMA NEGERI 1 KLATEN (PADMAWIJAYA)
-- Tabel: vertikal_monitoring (Pemantauan Berkelanjutan Multi-Device)
-- ====================================================================

-- 1. Buat Tabel Pemantauan
create table if not exists public.vertikal_monitoring (
    id bigint primary key,
    date text not null,
    timestamp text,
    "studentId" text,
    name text not null,
    kelas text not null,
    rombel text not null,
    presensi integer not null,
    scores jsonb not null default '[]'::jsonb,
    dims jsonb not null default '[]'::jsonb,
    raw numeric not null default 0,
    index numeric not null default 0,
    status text not null,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 2. Aktifkan Keamanan Row Level Security (RLS)
alter table public.vertikal_monitoring enable row level security;

-- 3. Kebijakan Akses: Izinkan Siswa & Guru Membaca dan Menyimpan Data
create policy "Izinkan publik membaca data pemantauan"
    on public.vertikal_monitoring
    for select
    using (true);

create policy "Izinkan publik menambah data pemantauan"
    on public.vertikal_monitoring
    for insert
    with check (true);

create policy "Izinkan publik menghapus data pemantauan"
    on public.vertikal_monitoring
    for delete
    using (true);

-- 4. Aktifkan Fitur Realtime Supabase (Opsional tapi Direkomendasikan)
alter publication supabase_realtime add table public.vertikal_monitoring;
