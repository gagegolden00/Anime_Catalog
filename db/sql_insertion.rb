
sql_anime = ["
  INSERT INTO anime (title, created_at, updated_at, genre, episodes, id) VALUES ('test1', NOW(), NOW(), 'genre test', 22, 1);
  INSERT INTO anime (title, created_at, updated_at, genre, episodes, id) VALUES ('test1', NOW(), NOW(), 'genre test', 22, 2);
  INSERT INTO anime (title, created_at, updated_at, genre, episodes, id) VALUES ('test1', NOW(), NOW(), 'genre test', 22, 3);
  INSERT INTO anime (title, created_at, updated_at, genre, episodes, id) VALUES ('test1', NOW(), NOW(), 'genre test', 22, 4);
  INSERT INTO anime (title, created_at, updated_at, genre, episodes, id) VALUES ('test1', NOW(), NOW(), 'genre test', 22, 5);
"]
ActiveRecord::Base.connection.execute(sql)