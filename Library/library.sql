PGDMP  *                    |            library    16.1    16.0 B    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16943    library    DATABASE     i   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE library;
                postgres    false            �            1259    17092    authors    TABLE     �   CREATE TABLE public.authors (
    author_birth_date integer,
    author_id integer NOT NULL,
    author_country character varying(255),
    author_name character varying(255)
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �            1259    17091    authors_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.authors_author_id_seq;
       public          postgres    false    216            N           0    0    authors_author_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;
          public          postgres    false    215            �            1259    17102    book2category    TABLE     �   CREATE TABLE public.book2category (
    book2category_book_id integer NOT NULL,
    book2category_category_id integer NOT NULL
);
 !   DROP TABLE public.book2category;
       public         heap    postgres    false            �            1259    17100 '   book2category_book2category_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book2category_book2category_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.book2category_book2category_book_id_seq;
       public          postgres    false    219            O           0    0 '   book2category_book2category_book_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.book2category_book2category_book_id_seq OWNED BY public.book2category.book2category_book_id;
          public          postgres    false    217            �            1259    17101 +   book2category_book2category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book2category_book2category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.book2category_book2category_category_id_seq;
       public          postgres    false    219            P           0    0 +   book2category_book2category_category_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.book2category_book2category_category_id_seq OWNED BY public.book2category.book2category_category_id;
          public          postgres    false    218            �            1259    17109    book_borrowings    TABLE     �   CREATE TABLE public.book_borrowings (
    borrow_book_id integer NOT NULL,
    borrower_id integer NOT NULL,
    borrower_name character varying(255),
    borrowing_date character varying(255),
    return_date character varying(255)
);
 #   DROP TABLE public.book_borrowings;
       public         heap    postgres    false            �            1259    17107 "   book_borrowings_borrow_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_borrowings_borrow_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.book_borrowings_borrow_book_id_seq;
       public          postgres    false    222            Q           0    0 "   book_borrowings_borrow_book_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.book_borrowings_borrow_book_id_seq OWNED BY public.book_borrowings.borrow_book_id;
          public          postgres    false    220            �            1259    17108    book_borrowings_borrower_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_borrowings_borrower_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.book_borrowings_borrower_id_seq;
       public          postgres    false    222            R           0    0    book_borrowings_borrower_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.book_borrowings_borrower_id_seq OWNED BY public.book_borrowings.borrower_id;
          public          postgres    false    221            �            1259    17121    books    TABLE     �   CREATE TABLE public.books (
    book_author_id integer NOT NULL,
    book_id integer NOT NULL,
    book_publication_year integer,
    book_publisher_id integer NOT NULL,
    book_stock integer,
    book_name character varying(255)
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    17118    books_book_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.books_book_author_id_seq;
       public          postgres    false    226            S           0    0    books_book_author_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.books_book_author_id_seq OWNED BY public.books.book_author_id;
          public          postgres    false    223            �            1259    17119    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public          postgres    false    226            T           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
          public          postgres    false    224            �            1259    17120    books_book_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.books_book_publisher_id_seq;
       public          postgres    false    226            U           0    0    books_book_publisher_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.books_book_publisher_id_seq OWNED BY public.books.book_publisher_id;
          public          postgres    false    225            �            1259    17130 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_description character varying(255),
    category_name character varying(255)
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    17129    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public          postgres    false    228            V           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public          postgres    false    227            �            1259    17139 
   publishers    TABLE     �   CREATE TABLE public.publishers (
    publisher_establishment_year integer,
    publisher_id integer NOT NULL,
    publisher_address character varying(255),
    publisher_name character varying(255)
);
    DROP TABLE public.publishers;
       public         heap    postgres    false            �            1259    17138    publishers_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publishers_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.publishers_publisher_id_seq;
       public          postgres    false    230            W           0    0    publishers_publisher_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.publishers_publisher_id_seq OWNED BY public.publishers.publisher_id;
          public          postgres    false    229            �           2604    17095    authors author_id    DEFAULT     v   ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);
 @   ALTER TABLE public.authors ALTER COLUMN author_id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17105 #   book2category book2category_book_id    DEFAULT     �   ALTER TABLE ONLY public.book2category ALTER COLUMN book2category_book_id SET DEFAULT nextval('public.book2category_book2category_book_id_seq'::regclass);
 R   ALTER TABLE public.book2category ALTER COLUMN book2category_book_id DROP DEFAULT;
       public          postgres    false    219    217    219            �           2604    17106 '   book2category book2category_category_id    DEFAULT     �   ALTER TABLE ONLY public.book2category ALTER COLUMN book2category_category_id SET DEFAULT nextval('public.book2category_book2category_category_id_seq'::regclass);
 V   ALTER TABLE public.book2category ALTER COLUMN book2category_category_id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17112    book_borrowings borrow_book_id    DEFAULT     �   ALTER TABLE ONLY public.book_borrowings ALTER COLUMN borrow_book_id SET DEFAULT nextval('public.book_borrowings_borrow_book_id_seq'::regclass);
 M   ALTER TABLE public.book_borrowings ALTER COLUMN borrow_book_id DROP DEFAULT;
       public          postgres    false    222    220    222            �           2604    17113    book_borrowings borrower_id    DEFAULT     �   ALTER TABLE ONLY public.book_borrowings ALTER COLUMN borrower_id SET DEFAULT nextval('public.book_borrowings_borrower_id_seq'::regclass);
 J   ALTER TABLE public.book_borrowings ALTER COLUMN borrower_id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    17124    books book_author_id    DEFAULT     |   ALTER TABLE ONLY public.books ALTER COLUMN book_author_id SET DEFAULT nextval('public.books_book_author_id_seq'::regclass);
 C   ALTER TABLE public.books ALTER COLUMN book_author_id DROP DEFAULT;
       public          postgres    false    226    223    226            �           2604    17125    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    224    226    226            �           2604    17126    books book_publisher_id    DEFAULT     �   ALTER TABLE ONLY public.books ALTER COLUMN book_publisher_id SET DEFAULT nextval('public.books_book_publisher_id_seq'::regclass);
 F   ALTER TABLE public.books ALTER COLUMN book_publisher_id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    17133    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    17142    publishers publisher_id    DEFAULT     �   ALTER TABLE ONLY public.publishers ALTER COLUMN publisher_id SET DEFAULT nextval('public.publishers_publisher_id_seq'::regclass);
 F   ALTER TABLE public.publishers ALTER COLUMN publisher_id DROP DEFAULT;
       public          postgres    false    229    230    230            9          0    17092    authors 
   TABLE DATA           \   COPY public.authors (author_birth_date, author_id, author_country, author_name) FROM stdin;
    public          postgres    false    216   P       <          0    17102    book2category 
   TABLE DATA           Y   COPY public.book2category (book2category_book_id, book2category_category_id) FROM stdin;
    public          postgres    false    219   �P       ?          0    17109    book_borrowings 
   TABLE DATA           r   COPY public.book_borrowings (borrow_book_id, borrower_id, borrower_name, borrowing_date, return_date) FROM stdin;
    public          postgres    false    222   �P       C          0    17121    books 
   TABLE DATA           y   COPY public.books (book_author_id, book_id, book_publication_year, book_publisher_id, book_stock, book_name) FROM stdin;
    public          postgres    false    226   Q       E          0    17130 
   categories 
   TABLE DATA           V   COPY public.categories (category_id, category_description, category_name) FROM stdin;
    public          postgres    false    228   �Q       G          0    17139 
   publishers 
   TABLE DATA           s   COPY public.publishers (publisher_establishment_year, publisher_id, publisher_address, publisher_name) FROM stdin;
    public          postgres    false    230   �Q       X           0    0    authors_author_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.authors_author_id_seq', 5, true);
          public          postgres    false    215            Y           0    0 '   book2category_book2category_book_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.book2category_book2category_book_id_seq', 1, false);
          public          postgres    false    217            Z           0    0 +   book2category_book2category_category_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.book2category_book2category_category_id_seq', 1, false);
          public          postgres    false    218            [           0    0 "   book_borrowings_borrow_book_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.book_borrowings_borrow_book_id_seq', 1, false);
          public          postgres    false    220            \           0    0    book_borrowings_borrower_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.book_borrowings_borrower_id_seq', 3, true);
          public          postgres    false    221            ]           0    0    books_book_author_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.books_book_author_id_seq', 1, false);
          public          postgres    false    223            ^           0    0    books_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.books_book_id_seq', 7, true);
          public          postgres    false    224            _           0    0    books_book_publisher_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.books_book_publisher_id_seq', 1, true);
          public          postgres    false    225            `           0    0    categories_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_category_id_seq', 4, true);
          public          postgres    false    227            a           0    0    publishers_publisher_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.publishers_publisher_id_seq', 5, true);
          public          postgres    false    229            �           2606    17099    authors authors_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    216            �           2606    17117 $   book_borrowings book_borrowings_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.book_borrowings
    ADD CONSTRAINT book_borrowings_pkey PRIMARY KEY (borrower_id);
 N   ALTER TABLE ONLY public.book_borrowings DROP CONSTRAINT book_borrowings_pkey;
       public            postgres    false    222            �           2606    17128    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    226            �           2606    17137    categories categories_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    228            �           2606    17146    publishers publishers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (publisher_id);
 D   ALTER TABLE ONLY public.publishers DROP CONSTRAINT publishers_pkey;
       public            postgres    false    230            �           2606    17162 !   books fk44cp76hd0fv4lg6cbdruskfvn    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk44cp76hd0fv4lg6cbdruskfvn FOREIGN KEY (book_author_id) REFERENCES public.authors(author_id);
 K   ALTER TABLE ONLY public.books DROP CONSTRAINT fk44cp76hd0fv4lg6cbdruskfvn;
       public          postgres    false    216    3483    226            �           2606    17167 !   books fk53bw245gmvw9eamjbtwgrxuj3    FK CONSTRAINT     �   ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk53bw245gmvw9eamjbtwgrxuj3 FOREIGN KEY (book_publisher_id) REFERENCES public.publishers(publisher_id);
 K   ALTER TABLE ONLY public.books DROP CONSTRAINT fk53bw245gmvw9eamjbtwgrxuj3;
       public          postgres    false    230    226    3491            �           2606    17147 )   book2category fkly8kulni41wm6m82meprhdj2x    FK CONSTRAINT     �   ALTER TABLE ONLY public.book2category
    ADD CONSTRAINT fkly8kulni41wm6m82meprhdj2x FOREIGN KEY (book2category_category_id) REFERENCES public.categories(category_id);
 S   ALTER TABLE ONLY public.book2category DROP CONSTRAINT fkly8kulni41wm6m82meprhdj2x;
       public          postgres    false    219    228    3489            �           2606    17157 +   book_borrowings fkoigmfa1w8fpmsvvcq8rp998ud    FK CONSTRAINT     �   ALTER TABLE ONLY public.book_borrowings
    ADD CONSTRAINT fkoigmfa1w8fpmsvvcq8rp998ud FOREIGN KEY (borrow_book_id) REFERENCES public.books(book_id);
 U   ALTER TABLE ONLY public.book_borrowings DROP CONSTRAINT fkoigmfa1w8fpmsvvcq8rp998ud;
       public          postgres    false    222    226    3487            �           2606    17152 )   book2category fkt1n6u8oc78wvo1myix5oonf19    FK CONSTRAINT     �   ALTER TABLE ONLY public.book2category
    ADD CONSTRAINT fkt1n6u8oc78wvo1myix5oonf19 FOREIGN KEY (book2category_book_id) REFERENCES public.books(book_id);
 S   ALTER TABLE ONLY public.book2category DROP CONSTRAINT fkt1n6u8oc78wvo1myix5oonf19;
       public          postgres    false    219    226    3487            9   �   x�3�47�4�t+J�+N�t��LS8:/1-1����Ԉӈ�Ȇ�ļ��N����<����R����1�d��=9i��(�d�%��dU�p�p�'Ve&敤p:f䦖(���Y�n�i��ݱ���T�Ҝ�<�=... *M3D      <      x������ � �      ?   ;   x�3�4�t.��(-Rp�N,*.�44�"##�?.NcN�Č�"�D��!�t� ^�n      C   �   x�3�4�4200�4�44�tϬ��Tp��I,:�1O!2?'����˄���H�r$�$'�%r��XZZM���(�*-*.��)��2�4)7�4�4�tJ�L�R�N�I�2r�,8��������� �� �      E   K   x�3���M�S��,I,�I,:�"�e�鑙�X�������ps���Y�,�2�tI�K�ME6-,����� �(      G   q   x�3204�4�<���$1/�4�ӵ,�(��D!2���Ƽ�Ģ#�---9�(220��4FR�d~b�A��&Hj�l�I-�<:?3�,SN��l�\jFf�0�̒��=... 10Gc     