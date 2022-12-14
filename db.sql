PGDMP     !                    z         	   employees    14.4    14.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16403 	   employees    DATABASE     i   CREATE DATABASE employees WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE employees;
                postgres    false            ?            1259    16414 
   dbkaryawan    TABLE     ?   CREATE TABLE public.dbkaryawan (
    id bigint NOT NULL,
    email_address character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL
);
    DROP TABLE public.dbkaryawan;
       public         heap    postgres    false            ?            1259    16413    dbkaryawan_id_seq    SEQUENCE     z   CREATE SEQUENCE public.dbkaryawan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dbkaryawan_id_seq;
       public          postgres    false    212            ?           0    0    dbkaryawan_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dbkaryawan_id_seq OWNED BY public.dbkaryawan.id;
          public          postgres    false    211            ?            1259    16405 	   employees    TABLE     ?   CREATE TABLE public.employees (
    id bigint NOT NULL,
    email_address character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?            1259    16404    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          postgres    false    210            ?           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          postgres    false    209            b           2604    16417    dbkaryawan id    DEFAULT     n   ALTER TABLE ONLY public.dbkaryawan ALTER COLUMN id SET DEFAULT nextval('public.dbkaryawan_id_seq'::regclass);
 <   ALTER TABLE public.dbkaryawan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    16408    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16414 
   dbkaryawan 
   TABLE DATA           N   COPY public.dbkaryawan (id, email_address, first_name, last_name) FROM stdin;
    public          postgres    false    212   ?       ?          0    16405 	   employees 
   TABLE DATA           M   COPY public.employees (id, email_address, first_name, last_name) FROM stdin;
    public          postgres    false    210   ?       ?           0    0    dbkaryawan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dbkaryawan_id_seq', 1, false);
          public          postgres    false    211            ?           0    0    employees_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employees_id_seq', 6, true);
          public          postgres    false    209            f           2606    16421    dbkaryawan dbkaryawan_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dbkaryawan
    ADD CONSTRAINT dbkaryawan_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dbkaryawan DROP CONSTRAINT dbkaryawan_pkey;
       public            postgres    false    212            d           2606    16412    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    210            ?      x?????? ? ?      ?   3   x?3?L?M??q ?z????E?E???C6?47?B*?$?gr??qqq U)     