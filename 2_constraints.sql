ALTER TABLE user
    ADD CONSTRAINT chk_email CHECK (email_address <> ''),
    ADD CONSTRAINT chk_country CHECK (country <> '');

ALTER TABLE song
    ADD CONSTRAINT chk_duration CHECK (song_duration > 0);

ALTER TABLE ticket
    ADD CONSTRAINT chk_ticket_price CHECK (ticket_price >= 0);

ALTER TABLE merch
    ADD CONSTRAINT chk_merch_price CHECK (merch_price >= 0);

ALTER TABLE stock
    ADD CONSTRAINT chk_stock_qty CHECK (stock_quantity >= 0);

ALTER TABLE payment
    ADD CONSTRAINT chk_payment_status CHECK (payment_status IN ('pending', 'completed', 'failed'));

ALTER TABLE collabs
    ADD CONSTRAINT chk_collabs_diff CHECK (artist_id <> artist_id_1);

ALTER TABLE event
    ADD CONSTRAINT chk_event_dates CHECK (event_end_date IS NULL OR event_end_date >= event_start_date);
