-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS activities;


CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email_address TEXT,
    phone_number TEXT,
    company_id INTEGER
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email_address TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salespeople_id TEXT,
    contacts_id TEXT,
    type TEXT,
    time TEXT,
    notes TEXT
);