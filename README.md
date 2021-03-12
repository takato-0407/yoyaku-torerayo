# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## ## DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| name               | string              | null: false,index: true |
| email              | string              | null: false             |
| encrypted_password | string              | null: false             |
| first_name         | string              | null: false             |
| last_name          | string              | null: false             |
| first_name_kana    | string              | null: false             |
| last_name_kana     | string              | null: false             |
| birth_date         | date                | null: false             |

### Association

* has_many :items
* has_many :item_purchases

## addresses table

| Column       | Type    | Options           |
|--------------|---------|-------------------|
| name         | string | null: false        |
| phone_number | string  | null: false       |
| time         | string  | null: false       |
| day          | string  | null: false       |
| koi          | string  |                   |
| phone_number | string  | null: false       |
| item_purchases(FK)  | references | foreign_key: true |

### Association

* belongs_to :item_purchase

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | string     | null: false       |
| price                               | integer    | null: false       |
| info                                | text       | null: false       |
| tempo_id(acitve_hash)               | integer    | null: false       |
| time_id(acitve_hash)                | integer    | null: false       |
| man_kaz_id(acitve_hash)             | integer    | null: false       |
| tempo_to_id(acitve_hash)            | integer    | null: false       |
| eki_id(acitve_hash)                 | integer    | null: false       |
| user(FK)                            | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :item_purchase

## item_purchases table

| Column      | Type    | Options           |
|-------------|---------|-------------------|
| item(FK) | references | foreign_key: true |
| user(FK) | references | foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- has_one :address


