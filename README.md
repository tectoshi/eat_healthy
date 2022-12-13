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
- has_many :nutrients

## nutrientsテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| calorie            | string     | null: false                     |
| protein            | string     | null: false                     |
| lipid              | string     | null: false                     |
| carbohydrate       | integer    | null: false                     |
| sugar              | integer    | null: false                     |
| fiber              | integer    | null: false                     |
| number             | integer    | null: false                     |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :user
