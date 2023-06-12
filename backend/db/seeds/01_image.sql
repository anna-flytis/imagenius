-- Insert fake users into the Users table
INSERT INTO Users (username, email, password)
VALUES
  ('user1', 'user1@example.com', 'password1'),
  ('user2', 'user2@example.com', 'password2'),
  ('user3', 'user3@example.com', 'password3');

-- Insert fake data into the Image table
INSERT INTO Image (image_url, parameters, created_at, user_id)
VALUES
  ('https://unsplash.com/photos/nD9yL9ukVlk', 'param1', '2023-05-30 10:00:00', 1),
  ('https://unsplash.com/photos/nD9yL9ukVlk', 'param2', '2023-05-31 12:00:00', 2),
  ('https://unsplash.com/photos/nD9yL9ukVlk', 'param3', '2023-06-01 15:00:00', 3);
