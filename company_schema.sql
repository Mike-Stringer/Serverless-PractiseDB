--
-- File generated with SQLiteStudio v3.2.1 on Sun Feb 17 22:49:31 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: all_dates_temp
CREATE TABLE all_dates_temp (
    the_date DATE
);


-- Table: campaigns
CREATE TABLE campaigns (
    start_date  DATE,
    end_date    DATE,
    total_spend REAL,
    country     TEXT
);


-- Table: campaigns_country
CREATE TABLE campaigns_country (
    campaign_id INTEGER,
    country     TEXT
);


-- Table: campaigns_day
CREATE TABLE campaigns_day (
    campaign_id       INTEGER,
    campaign_date     DATE,
    start_date_offset INTEGER,
    end_date_offset   INTEGER
);


-- Table: campaigns_id
CREATE TABLE campaigns_id (
    campaign_id INTEGER,
    start_date  DATE,
    end_date    DATE,
    total_spend REAL,
    country     TEXT
);


-- Table: clients
CREATE TABLE clients (
    account                  INTEGER,
    type                     TEXT,
    residence                TEXT,
    date_joined              DATE,
    indication_coupon        INTEGER,
    first_deposit_amount     REAL,
    first_deposit_date       DATE,
    first_transaction_amount REAL,
    first_transaction_date   DATE,
    balance_amount           REAL
);


-- Table: clients_total
CREATE TABLE clients_total (
    account                 INTEGER,
    grand_total_buy         REAL,
    grand_total_sell        REAL,
    grand_total_deposits    REAL,
    grand_total_withdrawals REAL,
    grand_count_contracts   INTEGER,
    grand_count_deposits    INTEGER,
    grand_count_withdrawals INTEGER
);


-- Table: transactions
CREATE TABLE transactions (
    transaction_date  DATE,
    account           INTEGER,
    total_buy         REAL,
    total_sell        REAL,
    total_deposits    REAL,
    total_withdrawals REAL,
    count_contracts   INTEGER,
    count_deposits    INTEGER,
    count_withdrawals INTEGER
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
