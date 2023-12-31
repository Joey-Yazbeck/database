PGDMP     (    (                 {           FYP    15.3    15.3 X               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41251    FYP    DATABASE     �   CREATE DATABASE "FYP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "FYP";
                postgres    false            �            1259    41252    alerts    TABLE     �   CREATE TABLE public.alerts (
    "AlertId" bigint NOT NULL,
    "IsRead" boolean NOT NULL,
    "TargetId" bigint,
    "Message" text NOT NULL,
    "DateCreated" date NOT NULL
);
    DROP TABLE public.alerts;
       public         heap    postgres    false            �            1259    41257    Alerts_AlertId_seq    SEQUENCE     �   ALTER TABLE public.alerts ALTER COLUMN "AlertId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Alerts_AlertId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    41258    camera    TABLE     �   CREATE TABLE public.camera (
    "CameraId" bigint NOT NULL,
    "CameraType" text NOT NULL,
    "CameraLocation" text NOT NULL
);
    DROP TABLE public.camera;
       public         heap    postgres    false            �            1259    41263    Camera_CameraId_seq    SEQUENCE     �   ALTER TABLE public.camera ALTER COLUMN "CameraId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Camera_CameraId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    41264    family_status    TABLE     n   CREATE TABLE public.family_status (
    "FamilyStatusId" bigint NOT NULL,
    "FamilyStatus" text NOT NULL
);
 !   DROP TABLE public.family_status;
       public         heap    postgres    false            �            1259    41269    FamilyStatus_FamilyStatusId_seq    SEQUENCE     �   ALTER TABLE public.family_status ALTER COLUMN "FamilyStatusId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."FamilyStatus_FamilyStatusId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    41270    gender    TABLE     [   CREATE TABLE public.gender (
    "GenderId" bigint NOT NULL,
    "Gender" text NOT NULL
);
    DROP TABLE public.gender;
       public         heap    postgres    false            �            1259    41275    Gender_GenderId_seq    SEQUENCE     �   ALTER TABLE public.gender ALTER COLUMN "GenderId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Gender_GenderId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    41276    keyword    TABLE     ^   CREATE TABLE public.keyword (
    "KeywordId" bigint NOT NULL,
    "Keyword" text NOT NULL
);
    DROP TABLE public.keyword;
       public         heap    postgres    false            �            1259    41281    Keyword_KeywordId_seq    SEQUENCE     �   ALTER TABLE public.keyword ALTER COLUMN "KeywordId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Keyword_KeywordId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    41282    nationality    TABLE     j   CREATE TABLE public.nationality (
    "NationalityId" bigint NOT NULL,
    "Nationality" text NOT NULL
);
    DROP TABLE public.nationality;
       public         heap    postgres    false            �            1259    41287    Nationality_NationalityId_seq    SEQUENCE     �   ALTER TABLE public.nationality ALTER COLUMN "NationalityId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Nationality_NationalityId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    41288    photo    TABLE     f   CREATE TABLE public.photo (
    "PhotoId" bigint NOT NULL,
    "Photo" text,
    "TargetId" bigint
);
    DROP TABLE public.photo;
       public         heap    postgres    false            �            1259    41293    Photo_PhotoId_seq    SEQUENCE     �   ALTER TABLE public.photo ALTER COLUMN "PhotoId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Photo_PhotoId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    41294    profile    TABLE       CREATE TABLE public.profile (
    "ProfileId" bigint NOT NULL,
    "FullName" text NOT NULL,
    "MotherName" text NOT NULL,
    "DateOfBirth" date NOT NULL,
    "GenderId" bigint NOT NULL,
    "NationalityId" bigint NOT NULL,
    "FamilyStatusId" bigint NOT NULL
);
    DROP TABLE public.profile;
       public         heap    postgres    false            �            1259    41299    Profile_ProfileId_seq    SEQUENCE     �   ALTER TABLE public.profile ALTER COLUMN "ProfileId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Profile_ProfileId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    41300    role    TABLE     U   CREATE TABLE public.role (
    "RoleId" bigint NOT NULL,
    "Role" text NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    41305    Role_RoleId_seq    SEQUENCE     �   ALTER TABLE public.role ALTER COLUMN "RoleId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Role_RoleId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �            1259    41306    suspect    TABLE     �   CREATE TABLE public.suspect (
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
            public          postgres    false    232            �            1259    41310    target    TABLE     `   CREATE TABLE public.target (
    "TargetId" bigint NOT NULL,
    "ProfileId" bigint NOT NULL
);
    DROP TABLE public.target;
       public         heap    postgres    false            �            1259    41313    Target_TargetId_seq    SEQUENCE     �   ALTER TABLE public.target ALTER COLUMN "TargetId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Target_TargetId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            �            1259    41314    user    TABLE     �   CREATE TABLE public."user" (
    "UserId" bigint NOT NULL,
    "FirstName" text NOT NULL,
    "LastName" text NOT NULL,
    "Email" text NOT NULL,
    "UserName" text NOT NULL,
    "Password" text NOT NULL,
    "RoleId" bigint NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    41319    User_UserId_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN "UserId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."User_UserId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    236            �            1259    41320    warrant_status    TABLE     q   CREATE TABLE public.warrant_status (
    "WarrantStatusId" bigint NOT NULL,
    "WarrantStatus" text NOT NULL
);
 "   DROP TABLE public.warrant_status;
       public         heap    postgres    false            �            1259    41325 !   WarrantStatus_WarrantStatusId_seq    SEQUENCE     �   ALTER TABLE public.warrant_status ALTER COLUMN "WarrantStatusId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."WarrantStatus_WarrantStatusId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    238            �            1259    41326    warrant    TABLE       CREATE TABLE public.warrant (
    "WarrantId" bigint NOT NULL,
    "IssueDate" date NOT NULL,
    "Location" text NOT NULL,
    "JudgeName" text NOT NULL,
    "CrimeDescription" text NOT NULL,
    "ProfileId" bigint NOT NULL,
    "WarrantStatusId" bigint NOT NULL
);
    DROP TABLE public.warrant;
       public         heap    postgres    false            �            1259    41331    Warrant_WarrantId_seq    SEQUENCE     �   ALTER TABLE public.warrant ALTER COLUMN "WarrantId" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Warrant_WarrantId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    240            a          0    41252    alerts 
   TABLE DATA           [   COPY public.alerts ("AlertId", "IsRead", "TargetId", "Message", "DateCreated") FROM stdin;
    public          postgres    false    214   �e       c          0    41258    camera 
   TABLE DATA           L   COPY public.camera ("CameraId", "CameraType", "CameraLocation") FROM stdin;
    public          postgres    false    216   f       e          0    41264    family_status 
   TABLE DATA           I   COPY public.family_status ("FamilyStatusId", "FamilyStatus") FROM stdin;
    public          postgres    false    218   :f       g          0    41270    gender 
   TABLE DATA           6   COPY public.gender ("GenderId", "Gender") FROM stdin;
    public          postgres    false    220   sf       i          0    41276    keyword 
   TABLE DATA           9   COPY public.keyword ("KeywordId", "Keyword") FROM stdin;
    public          postgres    false    222   �f       k          0    41282    nationality 
   TABLE DATA           E   COPY public.nationality ("NationalityId", "Nationality") FROM stdin;
    public          postgres    false    224   �f       m          0    41288    photo 
   TABLE DATA           ?   COPY public.photo ("PhotoId", "Photo", "TargetId") FROM stdin;
    public          postgres    false    226   �f       o          0    41294    profile 
   TABLE DATA           �   COPY public.profile ("ProfileId", "FullName", "MotherName", "DateOfBirth", "GenderId", "NationalityId", "FamilyStatusId") FROM stdin;
    public          postgres    false    228   hg       q          0    41300    role 
   TABLE DATA           0   COPY public.role ("RoleId", "Role") FROM stdin;
    public          postgres    false    230   h       s          0    41306    suspect 
   TABLE DATA           T   COPY public.suspect ("SuspectId", "CaptureDate", "CameraId", "PhotoId") FROM stdin;
    public          postgres    false    232   )h       u          0    41310    target 
   TABLE DATA           9   COPY public.target ("TargetId", "ProfileId") FROM stdin;
    public          postgres    false    234   `h       w          0    41314    user 
   TABLE DATA           n   COPY public."user" ("UserId", "FirstName", "LastName", "Email", "UserName", "Password", "RoleId") FROM stdin;
    public          postgres    false    236   �h       {          0    41326    warrant 
   TABLE DATA           �   COPY public.warrant ("WarrantId", "IssueDate", "Location", "JudgeName", "CrimeDescription", "ProfileId", "WarrantStatusId") FROM stdin;
    public          postgres    false    240   �h       y          0    41320    warrant_status 
   TABLE DATA           L   COPY public.warrant_status ("WarrantStatusId", "WarrantStatus") FROM stdin;
    public          postgres    false    238   i       �           0    0    Alerts_AlertId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Alerts_AlertId_seq"', 20, true);
          public          postgres    false    215            �           0    0    Camera_CameraId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Camera_CameraId_seq"', 1, true);
          public          postgres    false    217            �           0    0    FamilyStatus_FamilyStatusId_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."FamilyStatus_FamilyStatusId_seq"', 3, true);
          public          postgres    false    219            �           0    0    Gender_GenderId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Gender_GenderId_seq"', 2, true);
          public          postgres    false    221            �           0    0    Keyword_KeywordId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Keyword_KeywordId_seq"', 2, true);
          public          postgres    false    223            �           0    0    Nationality_NationalityId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Nationality_NationalityId_seq"', 1, true);
          public          postgres    false    225            �           0    0    Photo_PhotoId_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Photo_PhotoId_seq"', 50, true);
          public          postgres    false    227            �           0    0    Profile_ProfileId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Profile_ProfileId_seq"', 7, true);
          public          postgres    false    229            �           0    0    Role_RoleId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Role_RoleId_seq"', 1, true);
          public          postgres    false    231            �           0    0    Suspect_SuspectId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Suspect_SuspectId_seq"', 7, true);
          public          postgres    false    233            �           0    0    Target_TargetId_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Target_TargetId_seq"', 5, true);
          public          postgres    false    235            �           0    0    User_UserId_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."User_UserId_seq"', 9, true);
          public          postgres    false    237            �           0    0 !   WarrantStatus_WarrantStatusId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."WarrantStatus_WarrantStatusId_seq"', 2, true);
          public          postgres    false    239            �           0    0    Warrant_WarrantId_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Warrant_WarrantId_seq"', 1, true);
          public          postgres    false    241            �           2606    41333    alerts Alerts_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alerts
    ADD CONSTRAINT "Alerts_pkey" PRIMARY KEY ("AlertId");
 >   ALTER TABLE ONLY public.alerts DROP CONSTRAINT "Alerts_pkey";
       public            postgres    false    214            �           2606    41335    camera Camera_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.camera
    ADD CONSTRAINT "Camera_pkey" PRIMARY KEY ("CameraId");
 >   ALTER TABLE ONLY public.camera DROP CONSTRAINT "Camera_pkey";
       public            postgres    false    216            �           2606    41337    family_status FamilyStatus_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.family_status
    ADD CONSTRAINT "FamilyStatus_pkey" PRIMARY KEY ("FamilyStatusId");
 K   ALTER TABLE ONLY public.family_status DROP CONSTRAINT "FamilyStatus_pkey";
       public            postgres    false    218            �           2606    41339    gender Gender_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.gender
    ADD CONSTRAINT "Gender_pkey" PRIMARY KEY ("GenderId");
 >   ALTER TABLE ONLY public.gender DROP CONSTRAINT "Gender_pkey";
       public            postgres    false    220            �           2606    41341    keyword Keyword_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.keyword
    ADD CONSTRAINT "Keyword_pkey" PRIMARY KEY ("KeywordId");
 @   ALTER TABLE ONLY public.keyword DROP CONSTRAINT "Keyword_pkey";
       public            postgres    false    222            �           2606    41343    nationality Nationality_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.nationality
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY ("NationalityId");
 H   ALTER TABLE ONLY public.nationality DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    224            �           2606    41345    suspect PhotoId Constraint 
   CONSTRAINT     \   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "PhotoId Constraint" UNIQUE ("PhotoId");
 F   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "PhotoId Constraint";
       public            postgres    false    232            �           2606    41347    photo Photo_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT "Photo_pkey" PRIMARY KEY ("PhotoId");
 <   ALTER TABLE ONLY public.photo DROP CONSTRAINT "Photo_pkey";
       public            postgres    false    226            �           2606    41349     target Profile_constraint_Unique 
   CONSTRAINT     d   ALTER TABLE ONLY public.target
    ADD CONSTRAINT "Profile_constraint_Unique" UNIQUE ("ProfileId");
 L   ALTER TABLE ONLY public.target DROP CONSTRAINT "Profile_constraint_Unique";
       public            postgres    false    234            �           2606    41351    profile Profile_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "Profile_pkey" PRIMARY KEY ("ProfileId");
 @   ALTER TABLE ONLY public.profile DROP CONSTRAINT "Profile_pkey";
       public            postgres    false    228            �           2606    41353    role Role_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.role
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY ("RoleId");
 :   ALTER TABLE ONLY public.role DROP CONSTRAINT "Role_pkey";
       public            postgres    false    230            �           2606    41355    suspect Suspect_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "Suspect_pkey" PRIMARY KEY ("SuspectId");
 @   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "Suspect_pkey";
       public            postgres    false    232            �           2606    41357    photo Target_Constraint_Unique 
   CONSTRAINT     a   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT "Target_Constraint_Unique" UNIQUE ("TargetId");
 J   ALTER TABLE ONLY public.photo DROP CONSTRAINT "Target_Constraint_Unique";
       public            postgres    false    226            �           2606    41359    target Target_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.target
    ADD CONSTRAINT "Target_pkey" PRIMARY KEY ("TargetId");
 >   ALTER TABLE ONLY public.target DROP CONSTRAINT "Target_pkey";
       public            postgres    false    234            �           2606    41361    user User_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("UserId");
 <   ALTER TABLE ONLY public."user" DROP CONSTRAINT "User_pkey";
       public            postgres    false    236            �           2606    41363 !   warrant_status WarrantStatus_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.warrant_status
    ADD CONSTRAINT "WarrantStatus_pkey" PRIMARY KEY ("WarrantStatusId");
 M   ALTER TABLE ONLY public.warrant_status DROP CONSTRAINT "WarrantStatus_pkey";
       public            postgres    false    238            �           2606    41365    warrant Warrant_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.warrant
    ADD CONSTRAINT "Warrant_pkey" PRIMARY KEY ("WarrantId");
 @   ALTER TABLE ONLY public.warrant DROP CONSTRAINT "Warrant_pkey";
       public            postgres    false    240            �           2606    41366    suspect CameraId    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "CameraId" FOREIGN KEY ("CameraId") REFERENCES public.camera("CameraId") NOT VALID;
 <   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "CameraId";
       public          postgres    false    3241    216    232            �           2606    41371    profile FamilyStatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "FamilyStatusId" FOREIGN KEY ("FamilyStatusId") REFERENCES public.family_status("FamilyStatusId") NOT VALID;
 B   ALTER TABLE ONLY public.profile DROP CONSTRAINT "FamilyStatusId";
       public          postgres    false    218    228    3243            �           2606    41376    profile GenderId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "GenderId" FOREIGN KEY ("GenderId") REFERENCES public.gender("GenderId") NOT VALID;
 <   ALTER TABLE ONLY public.profile DROP CONSTRAINT "GenderId";
       public          postgres    false    228    220    3245            �           2606    41381    profile NationalityId    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT "NationalityId" FOREIGN KEY ("NationalityId") REFERENCES public.nationality("NationalityId") NOT VALID;
 A   ALTER TABLE ONLY public.profile DROP CONSTRAINT "NationalityId";
       public          postgres    false    224    3249    228            �           2606    41386    suspect PhotoId    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspect
    ADD CONSTRAINT "PhotoId" FOREIGN KEY ("PhotoId") REFERENCES public.photo("PhotoId") NOT VALID;
 ;   ALTER TABLE ONLY public.suspect DROP CONSTRAINT "PhotoId";
       public          postgres    false    226    232    3251            �           2606    41391    warrant ProfileId    FK CONSTRAINT     �   ALTER TABLE ONLY public.warrant
    ADD CONSTRAINT "ProfileId" FOREIGN KEY ("ProfileId") REFERENCES public.profile("ProfileId") NOT VALID;
 =   ALTER TABLE ONLY public.warrant DROP CONSTRAINT "ProfileId";
       public          postgres    false    228    3255    240            �           2606    41396    target ProfileId    FK CONSTRAINT     �   ALTER TABLE ONLY public.target
    ADD CONSTRAINT "ProfileId" FOREIGN KEY ("ProfileId") REFERENCES public.profile("ProfileId") NOT VALID;
 <   ALTER TABLE ONLY public.target DROP CONSTRAINT "ProfileId";
       public          postgres    false    3255    234    228            �           2606    41401    user RoleId    FK CONSTRAINT     ~   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "RoleId" FOREIGN KEY ("RoleId") REFERENCES public.role("RoleId") NOT VALID;
 9   ALTER TABLE ONLY public."user" DROP CONSTRAINT "RoleId";
       public          postgres    false    230    236    3257            �           2606    41406    photo TargetId    FK CONSTRAINT     �   ALTER TABLE ONLY public.photo
    ADD CONSTRAINT "TargetId" FOREIGN KEY ("TargetId") REFERENCES public.target("TargetId") NOT VALID;
 :   ALTER TABLE ONLY public.photo DROP CONSTRAINT "TargetId";
       public          postgres    false    226    3265    234            �           2606    41411    alerts TargetId    FK CONSTRAINT     �   ALTER TABLE ONLY public.alerts
    ADD CONSTRAINT "TargetId" FOREIGN KEY ("TargetId") REFERENCES public.target("TargetId") NOT VALID;
 ;   ALTER TABLE ONLY public.alerts DROP CONSTRAINT "TargetId";
       public          postgres    false    3265    234    214            �           2606    41416    warrant WarrantStatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public.warrant
    ADD CONSTRAINT "WarrantStatusId" FOREIGN KEY ("WarrantStatusId") REFERENCES public.warrant_status("WarrantStatusId") NOT VALID;
 C   ALTER TABLE ONLY public.warrant DROP CONSTRAINT "WarrantStatusId";
       public          postgres    false    240    3269    238            a   E   x�34�L���.-.HM.QpI-R�)�FFƺf�FF\��@5��!�E��Ts2Ř+F��� ���      c      x�3�OMrN��tJ�,*-����� B��      e   )   x�3���K�I�2��M,*�LM�2�t�,�/J2c���� ��	�      g      x�3��M�I�2�tK�1b���� ;�      i      x�3�L)*MWHIM�I-����� :,      k      x�3��IMJ�K-N����� &�      m   h   x�u��
�0 �s�/)iL�=�&���PdR�a/v���S��u�Q�c�1ץAP{8�kT��|\�j���X���A"I�4�v�	��]�<S�_�"�2C$�      o   �   x�3���O�T�K��LR�L�JJM���M,�LUPN,J��4����50�52�4A.SΠ��DǜL��̼�|N�Ē��D(��L������8�S��S���K�29}�s!fT�9�y
.�� i0md``��$F��� F�+}      q      x�3�tL�������� ��      s   '   x�3�4202�50�52�4�4��2G�EL�b���� �yk      u      x�3�4�2�4�2�4����� �      w   9   x�����O��L���2t+��R��2�Kr3s���s9�����FƜ�\1z\\\ -O      {   .   x�3�4204�#N��̢�N����L��Ң��"N3NC�=... ��
F      y      x�3�O�+IM�2�t,*J-1c���� _H�     