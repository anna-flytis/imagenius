-- Drop tables if they exist
DROP TABLE IF EXISTS public.SharedContent;
DROP TABLE IF EXISTS public.Image;
DROP TABLE IF EXISTS public.Users;

-- Create Users table
CREATE TABLE public.Users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Create Image table
CREATE TABLE public.Image (
  image_id SERIAL PRIMARY KEY NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  parameters VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  user_id INTEGER REFERENCES public.Users(id) ON DELETE CASCADE
);

-- Create SharedContent table
CREATE TABLE public.SharedContent (
  content_id SERIAL PRIMARY KEY NOT NULL,
  caption VARCHAR(255) NOT NULL,
  shared_at VARCHAR(255) NOT NULL,
  user_id INTEGER REFERENCES public.Users(id) ON DELETE CASCADE,
  image_id INTEGER REFERENCES public.Image(image_id) ON DELETE CASCADE
);
