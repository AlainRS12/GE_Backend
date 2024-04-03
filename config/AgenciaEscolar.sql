PGDMP     ;    8                |           AgenciaEscolar    15.3    15.3 r    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    AgenciaEscolar    DATABASE     �   CREATE DATABASE "AgenciaEscolar" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
     DROP DATABASE "AgenciaEscolar";
                postgres    false            �            1259    24678    boleta_de_movimiento    TABLE     ]  CREATE TABLE public.boleta_de_movimiento (
    id_boleta integer NOT NULL,
    escuelaid integer NOT NULL,
    secretariaid integer NOT NULL,
    nombre_est character varying(255) NOT NULL,
    nombre_tutor character varying(255) NOT NULL,
    escuela_actual character varying(255) NOT NULL,
    escuela_translado character varying(255) NOT NULL
);
 (   DROP TABLE public.boleta_de_movimiento;
       public         heap    postgres    false            �            1259    24677 "   boieta_de_movimiento_id_boleta_seq    SEQUENCE     �   CREATE SEQUENCE public.boieta_de_movimiento_id_boleta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.boieta_de_movimiento_id_boleta_seq;
       public          postgres    false    228            �           0    0 "   boieta_de_movimiento_id_boleta_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.boieta_de_movimiento_id_boleta_seq OWNED BY public.boleta_de_movimiento.id_boleta;
          public          postgres    false    227            �            1259    24588    escuela    TABLE     �   CREATE TABLE public.escuela (
    id_escuela integer NOT NULL,
    nombre_esc character varying(255) NOT NULL,
    "dirección_esc" character varying(255) NOT NULL,
    telefono_esc character varying(20) NOT NULL
);
    DROP TABLE public.escuela;
       public         heap    postgres    false            �            1259    24587    escuela_id_seq    SEQUENCE     �   CREATE SEQUENCE public.escuela_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.escuela_id_seq;
       public          postgres    false    217            �           0    0    escuela_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.escuela_id_seq OWNED BY public.escuela.id_escuela;
          public          postgres    false    216            �            1259    24642 
   expediente    TABLE     z  CREATE TABLE public.expediente (
    numero integer NOT NULL,
    escuelaid integer NOT NULL,
    secretariaid integer NOT NULL,
    nombre_est character varying(255) NOT NULL,
    apellido_est character varying(255) NOT NULL,
    "dirección_est" character varying(255) NOT NULL,
    telefono_est character varying(20) NOT NULL,
    carnet_de_identidad_est integer NOT NULL
);
    DROP TABLE public.expediente;
       public         heap    postgres    false            �            1259    24641    expediente_numero_seq    SEQUENCE     �   CREATE SEQUENCE public.expediente_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.expediente_numero_seq;
       public          postgres    false    223            �           0    0    expediente_numero_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.expediente_numero_seq OWNED BY public.expediente.numero;
          public          postgres    false    222            �            1259    24578    profesor    TABLE     =  CREATE TABLE public.profesor (
    id_profesor integer NOT NULL,
    nombre_prof character varying(255) NOT NULL,
    apellido_prof character varying(255) NOT NULL,
    asignatura_prof character varying(255) NOT NULL,
    telefono_prof character varying(20) NOT NULL,
    carnet_de_identidad_prof integer NOT NULL
);
    DROP TABLE public.profesor;
       public         heap    postgres    false            �            1259    24662    profesor_expediente    TABLE     �   CREATE TABLE public.profesor_expediente (
    profesorid integer NOT NULL,
    expedienteid integer NOT NULL,
    id_modificar integer NOT NULL
);
 '   DROP TABLE public.profesor_expediente;
       public         heap    postgres    false            �            1259    24661 $   profesor_expediente_expedienteid_seq    SEQUENCE     �   CREATE SEQUENCE public.profesor_expediente_expedienteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.profesor_expediente_expedienteid_seq;
       public          postgres    false    226            �           0    0 $   profesor_expediente_expedienteid_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.profesor_expediente_expedienteid_seq OWNED BY public.profesor_expediente.expedienteid;
          public          postgres    false    225            �            1259    24790 $   profesor_expediente_id_modificar_seq    SEQUENCE     �   CREATE SEQUENCE public.profesor_expediente_id_modificar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.profesor_expediente_id_modificar_seq;
       public          postgres    false    226            �           0    0 $   profesor_expediente_id_modificar_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.profesor_expediente_id_modificar_seq OWNED BY public.profesor_expediente.id_modificar;
          public          postgres    false    236            �            1259    24660 "   profesor_expediente_profesorid_seq    SEQUENCE     �   CREATE SEQUENCE public.profesor_expediente_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.profesor_expediente_profesorid_seq;
       public          postgres    false    226            �           0    0 "   profesor_expediente_profesorid_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.profesor_expediente_profesorid_seq OWNED BY public.profesor_expediente.profesorid;
          public          postgres    false    224            �            1259    24577    profesor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profesor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profesor_id_seq;
       public          postgres    false    215            �           0    0    profesor_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.profesor_id_seq OWNED BY public.profesor.id_profesor;
          public          postgres    false    214            �            1259    24628 
   secretaria    TABLE     i  CREATE TABLE public.secretaria (
    id_secretaria integer NOT NULL,
    escuelaid integer NOT NULL,
    nombre_secre character varying(255) NOT NULL,
    apellido_secrer character varying(255) NOT NULL,
    "dirección_secre" character varying(255) NOT NULL,
    telefono_secre character varying(20) NOT NULL,
    carnet_de_identidad_secre integer NOT NULL
);
    DROP TABLE public.secretaria;
       public         heap    postgres    false            �            1259    24627    secretaria_id_secretaria_seq    SEQUENCE     �   CREATE SEQUENCE public.secretaria_id_secretaria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.secretaria_id_secretaria_seq;
       public          postgres    false    221            �           0    0    secretaria_id_secretaria_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.secretaria_id_secretaria_seq OWNED BY public.secretaria.id_secretaria;
          public          postgres    false    220            �            1259    24697    tutor    TABLE     �  CREATE TABLE public.tutor (
    id_tutor integer NOT NULL,
    escuelaid integer NOT NULL,
    secretariaid integer NOT NULL,
    boletaid integer NOT NULL,
    nombre_tutor character varying(255) NOT NULL,
    apellido_tutor character varying(255) NOT NULL,
    "dirección_tutor" character varying(255) NOT NULL,
    telefono_tutor character varying(20) NOT NULL,
    carnet_de_identidad_tutor integer NOT NULL
);
    DROP TABLE public.tutor;
       public         heap    postgres    false            �            1259    24696    tutor_numero_seq    SEQUENCE     �   CREATE SEQUENCE public.tutor_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tutor_numero_seq;
       public          postgres    false    230            �           0    0    tutor_numero_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tutor_numero_seq OWNED BY public.tutor.id_tutor;
          public          postgres    false    229            �            1259    24598    usuario    TABLE     y  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre_user character varying(255) NOT NULL,
    apellido_user character varying(255) NOT NULL,
    email_user character varying(255) NOT NULL,
    telefono_user character varying(20) NOT NULL,
    tipo_de_usuario character varying(50),
    token character varying(255),
    cofirmado boolean DEFAULT false
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    24597    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    219            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id_usuario;
          public          postgres    false    218            �            1259    24723    usuario_profesor    TABLE     �   CREATE TABLE public.usuario_profesor (
    profesorid integer NOT NULL,
    userid integer NOT NULL,
    id_userp integer NOT NULL
);
 $   DROP TABLE public.usuario_profesor;
       public         heap    postgres    false            �            1259    24799    usuario_profesor_id_userp_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_profesor_id_userp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.usuario_profesor_id_userp_seq;
       public          postgres    false    233            �           0    0    usuario_profesor_id_userp_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.usuario_profesor_id_userp_seq OWNED BY public.usuario_profesor.id_userp;
          public          postgres    false    237            �            1259    24721    usuario_profesor_profesorid_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_profesor_profesorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_profesor_profesorid_seq;
       public          postgres    false    233            �           0    0    usuario_profesor_profesorid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_profesor_profesorid_seq OWNED BY public.usuario_profesor.profesorid;
          public          postgres    false    231            �            1259    24722    usuario_profesor_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_profesor_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.usuario_profesor_userid_seq;
       public          postgres    false    233            �           0    0    usuario_profesor_userid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.usuario_profesor_userid_seq OWNED BY public.usuario_profesor.userid;
          public          postgres    false    232            �            1259    24740    usuario_secretaria    TABLE     �   CREATE TABLE public.usuario_secretaria (
    secretariaid integer NOT NULL,
    userid integer NOT NULL,
    id_users integer NOT NULL
);
 &   DROP TABLE public.usuario_secretaria;
       public         heap    postgres    false            �            1259    24807    usuario_secretaria_id_users_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_secretaria_id_users_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_secretaria_id_users_seq;
       public          postgres    false    234            �           0    0    usuario_secretaria_id_users_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_secretaria_id_users_seq OWNED BY public.usuario_secretaria.id_users;
          public          postgres    false    238            �            1259    24748    usuario_tutor    TABLE     �   CREATE TABLE public.usuario_tutor (
    tutorid integer NOT NULL,
    userid integer NOT NULL,
    id_usert integer NOT NULL
);
 !   DROP TABLE public.usuario_tutor;
       public         heap    postgres    false            �            1259    24815    usuario_tutor_id_usert_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_tutor_id_usert_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.usuario_tutor_id_usert_seq;
       public          postgres    false    235            �           0    0    usuario_tutor_id_usert_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.usuario_tutor_id_usert_seq OWNED BY public.usuario_tutor.id_usert;
          public          postgres    false    239            �           2604    24681    boleta_de_movimiento id_boleta    DEFAULT     �   ALTER TABLE ONLY public.boleta_de_movimiento ALTER COLUMN id_boleta SET DEFAULT nextval('public.boieta_de_movimiento_id_boleta_seq'::regclass);
 M   ALTER TABLE public.boleta_de_movimiento ALTER COLUMN id_boleta DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    24591    escuela id_escuela    DEFAULT     p   ALTER TABLE ONLY public.escuela ALTER COLUMN id_escuela SET DEFAULT nextval('public.escuela_id_seq'::regclass);
 A   ALTER TABLE public.escuela ALTER COLUMN id_escuela DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    24645    expediente numero    DEFAULT     v   ALTER TABLE ONLY public.expediente ALTER COLUMN numero SET DEFAULT nextval('public.expediente_numero_seq'::regclass);
 @   ALTER TABLE public.expediente ALTER COLUMN numero DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    24581    profesor id_profesor    DEFAULT     s   ALTER TABLE ONLY public.profesor ALTER COLUMN id_profesor SET DEFAULT nextval('public.profesor_id_seq'::regclass);
 C   ALTER TABLE public.profesor ALTER COLUMN id_profesor DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24778    profesor_expediente profesorid    DEFAULT     �   ALTER TABLE ONLY public.profesor_expediente ALTER COLUMN profesorid SET DEFAULT nextval('public.profesor_expediente_profesorid_seq'::regclass);
 M   ALTER TABLE public.profesor_expediente ALTER COLUMN profesorid DROP DEFAULT;
       public          postgres    false    224    226    226            �           2604    24784     profesor_expediente expedienteid    DEFAULT     �   ALTER TABLE ONLY public.profesor_expediente ALTER COLUMN expedienteid SET DEFAULT nextval('public.profesor_expediente_expedienteid_seq'::regclass);
 O   ALTER TABLE public.profesor_expediente ALTER COLUMN expedienteid DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24791     profesor_expediente id_modificar    DEFAULT     �   ALTER TABLE ONLY public.profesor_expediente ALTER COLUMN id_modificar SET DEFAULT nextval('public.profesor_expediente_id_modificar_seq'::regclass);
 O   ALTER TABLE public.profesor_expediente ALTER COLUMN id_modificar DROP DEFAULT;
       public          postgres    false    236    226            �           2604    24631    secretaria id_secretaria    DEFAULT     �   ALTER TABLE ONLY public.secretaria ALTER COLUMN id_secretaria SET DEFAULT nextval('public.secretaria_id_secretaria_seq'::regclass);
 G   ALTER TABLE public.secretaria ALTER COLUMN id_secretaria DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24700    tutor id_tutor    DEFAULT     n   ALTER TABLE ONLY public.tutor ALTER COLUMN id_tutor SET DEFAULT nextval('public.tutor_numero_seq'::regclass);
 =   ALTER TABLE public.tutor ALTER COLUMN id_tutor DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    24601    usuario id_usuario    DEFAULT     p   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24766    usuario_profesor profesorid    DEFAULT     �   ALTER TABLE ONLY public.usuario_profesor ALTER COLUMN profesorid SET DEFAULT nextval('public.usuario_profesor_profesorid_seq'::regclass);
 J   ALTER TABLE public.usuario_profesor ALTER COLUMN profesorid DROP DEFAULT;
       public          postgres    false    233    231    233            �           2604    24772    usuario_profesor userid    DEFAULT     �   ALTER TABLE ONLY public.usuario_profesor ALTER COLUMN userid SET DEFAULT nextval('public.usuario_profesor_userid_seq'::regclass);
 F   ALTER TABLE public.usuario_profesor ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    24800    usuario_profesor id_userp    DEFAULT     �   ALTER TABLE ONLY public.usuario_profesor ALTER COLUMN id_userp SET DEFAULT nextval('public.usuario_profesor_id_userp_seq'::regclass);
 H   ALTER TABLE public.usuario_profesor ALTER COLUMN id_userp DROP DEFAULT;
       public          postgres    false    237    233            �           2604    24808    usuario_secretaria id_users    DEFAULT     �   ALTER TABLE ONLY public.usuario_secretaria ALTER COLUMN id_users SET DEFAULT nextval('public.usuario_secretaria_id_users_seq'::regclass);
 J   ALTER TABLE public.usuario_secretaria ALTER COLUMN id_users DROP DEFAULT;
       public          postgres    false    238    234            �           2604    24816    usuario_tutor id_usert    DEFAULT     �   ALTER TABLE ONLY public.usuario_tutor ALTER COLUMN id_usert SET DEFAULT nextval('public.usuario_tutor_id_usert_seq'::regclass);
 E   ALTER TABLE public.usuario_tutor ALTER COLUMN id_usert DROP DEFAULT;
       public          postgres    false    239    235            o          0    24678    boleta_de_movimiento 
   TABLE DATA           �   COPY public.boleta_de_movimiento (id_boleta, escuelaid, secretariaid, nombre_est, nombre_tutor, escuela_actual, escuela_translado) FROM stdin;
    public          postgres    false    228   َ       d          0    24588    escuela 
   TABLE DATA           Y   COPY public.escuela (id_escuela, nombre_esc, "dirección_esc", telefono_esc) FROM stdin;
    public          postgres    false    217   ��       j          0    24642 
   expediente 
   TABLE DATA           �   COPY public.expediente (numero, escuelaid, secretariaid, nombre_est, apellido_est, "dirección_est", telefono_est, carnet_de_identidad_est) FROM stdin;
    public          postgres    false    223   �       b          0    24578    profesor 
   TABLE DATA           �   COPY public.profesor (id_profesor, nombre_prof, apellido_prof, asignatura_prof, telefono_prof, carnet_de_identidad_prof) FROM stdin;
    public          postgres    false    215   0�       m          0    24662    profesor_expediente 
   TABLE DATA           U   COPY public.profesor_expediente (profesorid, expedienteid, id_modificar) FROM stdin;
    public          postgres    false    226   M�       h          0    24628 
   secretaria 
   TABLE DATA           �   COPY public.secretaria (id_secretaria, escuelaid, nombre_secre, apellido_secrer, "dirección_secre", telefono_secre, carnet_de_identidad_secre) FROM stdin;
    public          postgres    false    221   j�       q          0    24697    tutor 
   TABLE DATA           �   COPY public.tutor (id_tutor, escuelaid, secretariaid, boletaid, nombre_tutor, apellido_tutor, "dirección_tutor", telefono_tutor, carnet_de_identidad_tutor) FROM stdin;
    public          postgres    false    230   ��       f          0    24598    usuario 
   TABLE DATA           �   COPY public.usuario (id_usuario, nombre_user, apellido_user, email_user, telefono_user, tipo_de_usuario, token, cofirmado) FROM stdin;
    public          postgres    false    219   ��       t          0    24723    usuario_profesor 
   TABLE DATA           H   COPY public.usuario_profesor (profesorid, userid, id_userp) FROM stdin;
    public          postgres    false    233   ��       u          0    24740    usuario_secretaria 
   TABLE DATA           L   COPY public.usuario_secretaria (secretariaid, userid, id_users) FROM stdin;
    public          postgres    false    234   ޏ       v          0    24748    usuario_tutor 
   TABLE DATA           B   COPY public.usuario_tutor (tutorid, userid, id_usert) FROM stdin;
    public          postgres    false    235   ��       �           0    0 "   boieta_de_movimiento_id_boleta_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.boieta_de_movimiento_id_boleta_seq', 1, false);
          public          postgres    false    227            �           0    0    escuela_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.escuela_id_seq', 1, false);
          public          postgres    false    216            �           0    0    expediente_numero_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.expediente_numero_seq', 1, false);
          public          postgres    false    222            �           0    0 $   profesor_expediente_expedienteid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.profesor_expediente_expedienteid_seq', 1, false);
          public          postgres    false    225            �           0    0 $   profesor_expediente_id_modificar_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.profesor_expediente_id_modificar_seq', 1, false);
          public          postgres    false    236            �           0    0 "   profesor_expediente_profesorid_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.profesor_expediente_profesorid_seq', 1, false);
          public          postgres    false    224            �           0    0    profesor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profesor_id_seq', 1, false);
          public          postgres    false    214            �           0    0    secretaria_id_secretaria_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.secretaria_id_secretaria_seq', 1, false);
          public          postgres    false    220            �           0    0    tutor_numero_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tutor_numero_seq', 1, false);
          public          postgres    false    229            �           0    0    usuario_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuario_id_seq', 1, false);
          public          postgres    false    218            �           0    0    usuario_profesor_id_userp_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.usuario_profesor_id_userp_seq', 1, false);
          public          postgres    false    237            �           0    0    usuario_profesor_profesorid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_profesor_profesorid_seq', 1, false);
          public          postgres    false    231            �           0    0    usuario_profesor_userid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.usuario_profesor_userid_seq', 1, false);
          public          postgres    false    232            �           0    0    usuario_secretaria_id_users_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_secretaria_id_users_seq', 1, false);
          public          postgres    false    238            �           0    0    usuario_tutor_id_usert_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.usuario_tutor_id_usert_seq', 1, false);
          public          postgres    false    239            �           2606    24685 .   boleta_de_movimiento boieta_de_movimiento_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.boleta_de_movimiento
    ADD CONSTRAINT boieta_de_movimiento_pkey PRIMARY KEY (id_boleta);
 X   ALTER TABLE ONLY public.boleta_de_movimiento DROP CONSTRAINT boieta_de_movimiento_pkey;
       public            postgres    false    228            �           2606    24595    escuela escuela_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.escuela
    ADD CONSTRAINT escuela_pkey PRIMARY KEY (id_escuela);
 >   ALTER TABLE ONLY public.escuela DROP CONSTRAINT escuela_pkey;
       public            postgres    false    217            �           2606    24649    expediente expediente_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.expediente
    ADD CONSTRAINT expediente_pkey PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.expediente DROP CONSTRAINT expediente_pkey;
       public            postgres    false    223            �           2606    24793 ,   profesor_expediente profesor_expediente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.profesor_expediente
    ADD CONSTRAINT profesor_expediente_pkey PRIMARY KEY (id_modificar);
 V   ALTER TABLE ONLY public.profesor_expediente DROP CONSTRAINT profesor_expediente_pkey;
       public            postgres    false    226            �           2606    24585    profesor profesor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id_profesor);
 @   ALTER TABLE ONLY public.profesor DROP CONSTRAINT profesor_pkey;
       public            postgres    false    215            �           2606    24635    secretaria secretaria_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.secretaria
    ADD CONSTRAINT secretaria_pkey PRIMARY KEY (id_secretaria);
 D   ALTER TABLE ONLY public.secretaria DROP CONSTRAINT secretaria_pkey;
       public            postgres    false    221            �           2606    24704    tutor tutor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT tutor_pkey PRIMARY KEY (id_tutor);
 :   ALTER TABLE ONLY public.tutor DROP CONSTRAINT tutor_pkey;
       public            postgres    false    230            �           2606    24608    usuario usuario_email_user_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_user_key UNIQUE (email_user);
 H   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_user_key;
       public            postgres    false    219            �           2606    24606    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    219            �           2606    24802 &   usuario_profesor usuario_profesor_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.usuario_profesor
    ADD CONSTRAINT usuario_profesor_pkey PRIMARY KEY (id_userp);
 P   ALTER TABLE ONLY public.usuario_profesor DROP CONSTRAINT usuario_profesor_pkey;
       public            postgres    false    233            �           2606    24810 *   usuario_secretaria usuario_secretaria_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.usuario_secretaria
    ADD CONSTRAINT usuario_secretaria_pkey PRIMARY KEY (id_users);
 T   ALTER TABLE ONLY public.usuario_secretaria DROP CONSTRAINT usuario_secretaria_pkey;
       public            postgres    false    234            �           2606    24818     usuario_tutor usuario_tutor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.usuario_tutor
    ADD CONSTRAINT usuario_tutor_pkey PRIMARY KEY (id_usert);
 J   ALTER TABLE ONLY public.usuario_tutor DROP CONSTRAINT usuario_tutor_pkey;
       public            postgres    false    235            �           2606    24655    expediente fktes    FK CONSTRAINT     �   ALTER TABLE ONLY public.expediente
    ADD CONSTRAINT fktes FOREIGN KEY (secretariaid) REFERENCES public.secretaria(id_secretaria);
 :   ALTER TABLE ONLY public.expediente DROP CONSTRAINT fktes;
       public          postgres    false    221    223    3252            �           2606    24686    boleta_de_movimiento fktes    FK CONSTRAINT     �   ALTER TABLE ONLY public.boleta_de_movimiento
    ADD CONSTRAINT fktes FOREIGN KEY (escuelaid) REFERENCES public.escuela(id_escuela);
 D   ALTER TABLE ONLY public.boleta_de_movimiento DROP CONSTRAINT fktes;
       public          postgres    false    3246    228    217            �           2606    24710    tutor fktes    FK CONSTRAINT     v   ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT fktes FOREIGN KEY (escuelaid) REFERENCES public.escuela(id_escuela);
 5   ALTER TABLE ONLY public.tutor DROP CONSTRAINT fktes;
       public          postgres    false    230    3246    217            �           2606    24756    usuario_secretaria fktes    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_secretaria
    ADD CONSTRAINT fktes FOREIGN KEY (secretariaid) REFERENCES public.secretaria(id_secretaria);
 B   ALTER TABLE ONLY public.usuario_secretaria DROP CONSTRAINT fktes;
       public          postgres    false    221    234    3252            �           2606    24761    usuario_tutor fktes    FK CONSTRAINT     x   ALTER TABLE ONLY public.usuario_tutor
    ADD CONSTRAINT fktes FOREIGN KEY (tutorid) REFERENCES public.tutor(id_tutor);
 =   ALTER TABLE ONLY public.usuario_tutor DROP CONSTRAINT fktes;
       public          postgres    false    230    3260    235            �           2606    24785    profesor_expediente fktes    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesor_expediente
    ADD CONSTRAINT fktes FOREIGN KEY (expedienteid) REFERENCES public.expediente(numero);
 C   ALTER TABLE ONLY public.profesor_expediente DROP CONSTRAINT fktes;
       public          postgres    false    3254    223    226            �           2606    24636    secretaria fktest    FK CONSTRAINT     |   ALTER TABLE ONLY public.secretaria
    ADD CONSTRAINT fktest FOREIGN KEY (escuelaid) REFERENCES public.escuela(id_escuela);
 ;   ALTER TABLE ONLY public.secretaria DROP CONSTRAINT fktest;
       public          postgres    false    3246    221    217            �           2606    24650    expediente fktest    FK CONSTRAINT     |   ALTER TABLE ONLY public.expediente
    ADD CONSTRAINT fktest FOREIGN KEY (escuelaid) REFERENCES public.escuela(id_escuela);
 ;   ALTER TABLE ONLY public.expediente DROP CONSTRAINT fktest;
       public          postgres    false    3246    217    223            �           2606    24691    boleta_de_movimiento fktest    FK CONSTRAINT     �   ALTER TABLE ONLY public.boleta_de_movimiento
    ADD CONSTRAINT fktest FOREIGN KEY (secretariaid) REFERENCES public.secretaria(id_secretaria);
 E   ALTER TABLE ONLY public.boleta_de_movimiento DROP CONSTRAINT fktest;
       public          postgres    false    3252    221    228            �           2606    24705    tutor fktest    FK CONSTRAINT     �   ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT fktest FOREIGN KEY (secretariaid) REFERENCES public.secretaria(id_secretaria);
 6   ALTER TABLE ONLY public.tutor DROP CONSTRAINT fktest;
       public          postgres    false    230    221    3252            �           2606    24743    usuario_secretaria fktest    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_secretaria
    ADD CONSTRAINT fktest FOREIGN KEY (userid) REFERENCES public.usuario(id_usuario);
 C   ALTER TABLE ONLY public.usuario_secretaria DROP CONSTRAINT fktest;
       public          postgres    false    234    219    3250            �           2606    24751    usuario_tutor fktest    FK CONSTRAINT     |   ALTER TABLE ONLY public.usuario_tutor
    ADD CONSTRAINT fktest FOREIGN KEY (userid) REFERENCES public.usuario(id_usuario);
 >   ALTER TABLE ONLY public.usuario_tutor DROP CONSTRAINT fktest;
       public          postgres    false    3250    219    235            �           2606    24779    profesor_expediente fktest    FK CONSTRAINT     �   ALTER TABLE ONLY public.profesor_expediente
    ADD CONSTRAINT fktest FOREIGN KEY (profesorid) REFERENCES public.profesor(id_profesor);
 D   ALTER TABLE ONLY public.profesor_expediente DROP CONSTRAINT fktest;
       public          postgres    false    226    3244    215            �           2606    24773    usuario_profesor fktet    FK CONSTRAINT     ~   ALTER TABLE ONLY public.usuario_profesor
    ADD CONSTRAINT fktet FOREIGN KEY (userid) REFERENCES public.usuario(id_usuario);
 @   ALTER TABLE ONLY public.usuario_profesor DROP CONSTRAINT fktet;
       public          postgres    false    3250    233    219            �           2606    24716    tutor fktets    FK CONSTRAINT     �   ALTER TABLE ONLY public.tutor
    ADD CONSTRAINT fktets FOREIGN KEY (boletaid) REFERENCES public.boleta_de_movimiento(id_boleta);
 6   ALTER TABLE ONLY public.tutor DROP CONSTRAINT fktets;
       public          postgres    false    228    3258    230            �           2606    24767    usuario_profesor fktets    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_profesor
    ADD CONSTRAINT fktets FOREIGN KEY (profesorid) REFERENCES public.profesor(id_profesor);
 A   ALTER TABLE ONLY public.usuario_profesor DROP CONSTRAINT fktets;
       public          postgres    false    233    3244    215            o      x������ � �      d      x������ � �      j      x������ � �      b      x������ � �      m      x������ � �      h      x������ � �      q      x������ � �      f      x������ � �      t      x������ � �      u      x������ � �      v      x������ � �     