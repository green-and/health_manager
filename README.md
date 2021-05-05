## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| nickname   | string | null: false |
| age  | integer | 
| email  | string | null: false |
| password  | string | null: false |

### Association
- has_many :meals
- has_many :digitals
- has_many :communications
- has_many :conditions

## mealsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| menu   | string | null: false |
| wheat  | integer | null: false |
| calory  | integer |

### Association
- belongs_to :user

## digitalsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| time   | integer |

### Association
- belongs_to :user

## communicationsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| time   | integer |

### Association
- belongs_to :user

## conditionsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| level   | integer |

### Association
- belongs_to :user

## goalsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| goal   | integer |

### Association
- belongs_to :user
- has_one :achievements

## achievementsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| achievement   | integer |

### Association
- belongs_to :user
- belongs_to :goals