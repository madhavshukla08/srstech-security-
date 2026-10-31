CREATE TABLE IF NOT EXISTS public.surakshaprox_qr_records (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    purpose TEXT NOT NULL,
    qr_scanned BOOLEAN NOT NULL DEFAULT FALSE,
    status TEXT NOT NULL DEFAULT 'Active'
        CHECK (status IN ('Active', 'Disabled')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE public.surakshaprox_qr_records
ENABLE ROW LEVEL SECURITY;
