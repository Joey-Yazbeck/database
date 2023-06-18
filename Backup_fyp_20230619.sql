PGDMP         1                {           FYP    15.3    15.3     /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    24589    FYP    DATABASE     �   CREATE DATABASE "FYP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "FYP";
                postgres    false            3           0    0    FYP    DATABASE PROPERTIES     2   ALTER DATABASE "FYP" SET search_path TO 'public';
                     postgres    false            �            1259    24603    profile    TABLE       CREATE TABLE public.profile (
    "ProfileId" bigint NOT NULL,
    "FullName" text NOT NULL,
    "MotherName" text NOT NULL,
    "DateOfBirth" date NOT NULL,
    "GenderId" bigint NOT NULL,
    "NationalityId" bigint NOT NULL,
    "FamilyStatusId" bigint NOT NULL
);
    DROP TABLE public.profile;
       public         heap    postgres    false            �            1259    24602    Profile_ProfileId_seq    SEQUENCE     �   ALTER TABLE public.profile ALTER COLUMN "ProfileId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Profile_ProfileId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            ,          0    24603    profile 
   TABLE DATA           �   COPY public.profile ("ProfileId", "FullName", "MotherName", "DateOfBirth", "GenderId", "NationalityId", "FamilyStatusId") FROM stdin;
    public          postgres    false    219   �       4           0    0    Profile_ProfileId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Profile_ProfileId_seq"', 7, true);
          public          postgres    false    218            �           2606    24607    profile Profile_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "Profile_pkey" PRIMARY KEY ("ProfileId");
 @   ALTER TABLE ONLY public.profile DROP CONSTRAINT "Profile_pkey";
       public            postgres    false    219            �           2606    24695    profile FamilyStatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "FamilyStatusId" FOREIGN KEY ("FamilyStatusId") REFERENCES public.family_status("FamilyStatusId") NOT VALID;
 B   ALTER TABLE ONLY public.profile DROP CONSTRAINT "FamilyStatusId";
       public          postgres    false    219            �           2606    24685    profile GenderId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "GenderId" FOREIGN KEY ("GenderId") REFERENCES public.gender("GenderId") NOT VALID;
 <   ALTER TABLE ONLY public.profile DROP CONSTRAINT "GenderId";
       public          postgres    false    219            �           2606    24690    profile NationalityId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "NationalityId" FOREIGN KEY ("NationalityId") REFERENCES public.nationality("NationalityId") NOT VALID;
 A   ALTER TABLE ONLY public.profile DROP CONSTRAINT "NationalityId";
       public          postgres    false    219            ,   �   x�3���O�T�K��LR�L�JJM���M,�LUPN,J��4����50�52�4A.SΠ��DǜL��̼�|N�Ē��D(��L������8�S��S���K�29}�s!fT�9�y
.�� i0md``��$F��� F�+}     