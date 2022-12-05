## usersテーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |
| gender_id          | integer | null: false               |
| height             | integer | null: false               |
| weight             | integer | null: false               |
| birth              | date    | null: false               |

### Association

- has_many :items
- has_many :orders
