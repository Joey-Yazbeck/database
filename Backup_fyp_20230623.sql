PGDMP     5                    {           FYP    15.3    15.3     0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    41251    FYP    DATABASE     �   CREATE DATABASE "FYP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "FYP";
                postgres    false            �            1259    41306    suspect    TABLE     �   CREATE TABLE public.suspect (
    "SuspectId" bigint NOT NULL,
    "CaptureDate" date NOT NULL,
    "CameraId" bigint NOT NULL,
    "PhotoId" bigint NOT NULL
);
    DROP TABLE public.suspect;
       public         heap    postgres    false            �            1259    41309    Suspect_SuspectId_seq    SEQUENCE     �   ALTER TABLE public.suspect ALTER COLUMN "SuspectId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Suspect_SuspectId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            ,          0    41306    suspect 
   TABLE DATA           T   COPY public.suspect ("SuspectId", "CaptureDate", "CameraId", "PhotoId") FROM stdin;
    public          postgres    false    232   �       4           0    0    Suspect_SuspectId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Suspect_SuspectId_seq"', 7, true);
          public          postgres    false    233            �           2606    41345    suspect PhotoId Constraint 
   CONSTRAINT     \   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "PhotoId Constraint" UNIQUE ("PhotoId");
 F   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "PhotoId Constraint";
       public            postgres    false    232            �           2606    41355    suspect Suspect_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "Suspect_pkey" PRIMARY KEY ("SuspectId");
 @   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "Suspect_pkey";
       public            postgres    false    232            �           2606    41366    suspect CameraId    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "CameraId" FOREIGN KEY ("CameraId") REFERENCES public.camera("CameraId") NOT VALID;
 <   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "CameraId";
       public          postgres    false    232            �           2606    41386    suspect PhotoId    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "PhotoId" FOREIGN KEY ("PhotoId") REFERENCES public.photo("PhotoId") NOT VALID;
 ;   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "PhotoId";
       public          postgres    false    232            ,   '   x�3�4202�50�52�4�4��2G�EL�b���� �yk     