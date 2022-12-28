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
| name               | string     | null: false                     |
| calorie            | float      | null: false                     |
| protein            | float      | null: false                     |
| lipid              | float      | null: false                     |
| carbohydrate       | float      | null: false                     |
| sugar              | float      | null: false                     |
| fiber              | float      | null: false                     |
| number             | float      | null: false                     |
| start_time         | datetime   | null: false                     |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :user


