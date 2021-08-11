# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:



# テーブル設計

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |  
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :messages
- has_many :prototypes

## prototypes テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association
- has_many :users
- has_many :messages


## messages テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| content       | string     |                                |
| user          | references | null: false, foreign_key: true |
| prototypes    | references | null: false, foreign_key: true |


### Association
- belongs_to :prototypes
- belongs_to :user






