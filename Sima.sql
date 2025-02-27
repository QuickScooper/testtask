PGDMP         &            
    z            Sima    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    Sima    DATABASE     z   CREATE DATABASE "Sima" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Sima";
                postgres    false            �            1259    16405    permissions    TABLE     j   CREATE TABLE public.permissions (
    permission_id integer NOT NULL,
    permission character varying
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    16428    permissions_permission_id_seq    SEQUENCE     �   ALTER TABLE public.permissions ALTER COLUMN permission_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.permissions_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16400    users    TABLE     &  CREATE TABLE public.users (
    name character varying(20) NOT NULL,
    surname character varying(20) NOT NULL,
    login character varying(32) NOT NULL,
    password character varying(64) NOT NULL,
    birthday date,
    permission integer DEFAULT 1 NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16422    users_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �          0    16405    permissions 
   TABLE DATA           @   COPY public.permissions (permission_id, permission) FROM stdin;
    public          postgres    false    215   h       �          0    16400    users 
   TABLE DATA           ^   COPY public.users (name, surname, login, password, birthday, permission, user_id) FROM stdin;
    public          postgres    false    214   �                  0    0    permissions_permission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.permissions_permission_id_seq', 1, false);
          public          postgres    false    217            	           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);
          public          postgres    false    216            n           2606    16416    permissions permissions_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (permission_id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    215            l           2606    16427    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    214            o           2606    16430    users fk_permission_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_permission_users FOREIGN KEY (permission) REFERENCES public.permissions(permission_id) NOT VALID;
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_permission_users;
       public          postgres    false    214    3182    215            �   ,   x�3�,JML��˩�2�LL����2�L�IL���,.����� �z
x      �   #   x�KL����L� -�t��Ӑӈ+F��� 5_]     