PGDMP                         {           testDB    15.3    15.3 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    testDB    DATABASE     �   CREATE DATABASE "testDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "testDB";
                postgres    false            �            1259    24576    users    TABLE     �   CREATE TABLE public.users (
    "Name" text NOT NULL,
    "Image" text NOT NULL,
    "UserId" bigint NOT NULL,
    "Email" text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24581    Users_UserId_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN "UserId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_UserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �          0    24576    users 
   TABLE DATA           C   COPY public.users ("Name", "Image", "UserId", "Email") FROM stdin;
    public          postgres    false    214   �       �           0    0    Users_UserId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Users_UserId_seq"', 3, true);
          public          postgres    false    215            f           2606    24588    users UserId 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UserId" PRIMARY KEY ("UserId");
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT "UserId";
       public            postgres    false    214            �   5   x���O���zY霆�1~\^p���tNc�,.�ĢdNVd����� -��     