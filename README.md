# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| nick_name | string | null: false |
| email     | string | null: false |
| password  | string | null: false |


### Association
- has_many :cooking


## cooking テーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| cooking_name | string     | null: false       |
| explanation  | text       | null: false       |
| ingredients1 | string     | null: false       |
| quantity1    | string     | null: false       |
| ingredients2 | string     | null: false       |
| quantity2    | string     | null: false       |
| ingredients3 | string     | null: false       |
| quantity3    | string     | null: false       |
| ingredients4 | string     | null: false       |
| quantity4    | string     | null: false       |
| ingredients5 | string     | null: false       |
| quantity5    | string     | null: false       |
| ingredients6 | string     | null: false       |
| quantity6    | string     | null: false       |
| ingredients7 | string     | null: false       |
| quantity7    | string     | null: false       |
| ingredients8 | string     | null: false       |
| quantity8    | string     | null: false       |
| ingredients9 | string     | null: false       |
| quantity9    | string     | null: false       |
| ingredients0 | string     | null: false       |
| quantity0    | string     | null: false       |
| user         | references | foreign_key: true |


### Association
- belongs_to :user