# README
Name
====
Task management

Overview
Task managementは、タスク管理ができるツールで、Ruby on Railsで記述されています。

## Description
このツールを使うと、以下のことが可能になります。
・自分のタスクを簡単に登録
・タスクに終了期限を設定
・タスクに優先順位をつける
・ステータス（未着手・着手・完了）を管理
・ステータスでタスクを絞り込む
・タスク名などで指定のタスクを検索
・タスク一覧で（優先順位、終了期限などを元にして）ソート
・タスクにラベルをつけて分類
・ユーザ登録し、自分が登録したタスクだけ見られる

## table
Userテーブル

|  Column   |  Type    |
| --------  | -------- |
|  name     |  string  |
|  email    |  string  |
| password_digest | string |

Taskテーブル

|  Column   |  Type    |　Description |
| --------  | -------- | ------------ |
| name      | string   |              |
| detail    | text     |              |
| user_id   | index    | foreign_key  |

Labelテーブル

|  Column   |  Type    |　Description |
| --------  | -------- | ------------ |
| task_id   | integer  | foreign_key  |
| user_id   | integer  | foreign_key  |
