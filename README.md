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
- has_many :food_key

## nutrientsテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| calorie            | string     | null: false                     |
| protein            | string     | null: false                     |
| lipid              | string     | null: false                     |
| carbohydrate       | string     | null: false                     |
| sugar              | string     | null: false                     |
| fiber              | string     | null: false                     |
| user               | references | null: false, foreign_key: true  |

### Association
- belongs_to :user
- belongs_to :food_key


## food_keyテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| food_id            | integer    | null: false                     |
| number_id          | integer    | null: false                     |

### Association
- belongs_to :user
- has_one :food_key