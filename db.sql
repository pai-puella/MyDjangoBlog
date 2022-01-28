--
-- PostgreSQL database dump
--

-- Dumped from database version 10.19
-- Dumped by pg_dump version 10.19

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_summernote_attachment (
    id bigint NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO admin;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO admin;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: post_category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.post_category (
    id bigint NOT NULL,
    title character varying(50) NOT NULL
);


ALTER TABLE public.post_category OWNER TO admin;

--
-- Name: post_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.post_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_category_id_seq OWNER TO admin;

--
-- Name: post_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.post_category_id_seq OWNED BY public.post_category.id;


--
-- Name: post_comments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.post_comments (
    id bigint NOT NULL,
    text text NOT NULL,
    created timestamp with time zone,
    moderation boolean NOT NULL,
    new_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.post_comments OWNER TO admin;

--
-- Name: post_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.post_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_comments_id_seq OWNER TO admin;

--
-- Name: post_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.post_comments_id_seq OWNED BY public.post_comments.id;


--
-- Name: post_news; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.post_news (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    text_min text NOT NULL,
    text text NOT NULL,
    created timestamp with time zone NOT NULL,
    description character varying(100) NOT NULL,
    keywords character varying(50) NOT NULL,
    category_id bigint,
    user_id integer NOT NULL
);


ALTER TABLE public.post_news OWNER TO admin;

--
-- Name: post_news_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.post_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_news_id_seq OWNER TO admin;

--
-- Name: post_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.post_news_id_seq OWNED BY public.post_news.id;


--
-- Name: post_news_tags; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.post_news_tags (
    id bigint NOT NULL,
    news_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.post_news_tags OWNER TO admin;

--
-- Name: post_news_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.post_news_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_news_tags_id_seq OWNER TO admin;

--
-- Name: post_news_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.post_news_tags_id_seq OWNED BY public.post_news_tags.id;


--
-- Name: post_tag; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.post_tag (
    id bigint NOT NULL,
    title character varying(50) NOT NULL
);


ALTER TABLE public.post_tag OWNER TO admin;

--
-- Name: post_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.post_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_tag_id_seq OWNER TO admin;

--
-- Name: post_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.post_tag_id_seq OWNED BY public.post_tag.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: post_category id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_category ALTER COLUMN id SET DEFAULT nextval('public.post_category_id_seq'::regclass);


--
-- Name: post_comments id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_comments ALTER COLUMN id SET DEFAULT nextval('public.post_comments_id_seq'::regclass);


--
-- Name: post_news id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news ALTER COLUMN id SET DEFAULT nextval('public.post_news_id_seq'::regclass);


--
-- Name: post_news_tags id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news_tags ALTER COLUMN id SET DEFAULT nextval('public.post_news_tags_id_seq'::regclass);


--
-- Name: post_tag id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_tag ALTER COLUMN id SET DEFAULT nextval('public.post_tag_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Тег	7	add_tag
26	Can change Тег	7	change_tag
27	Can delete Тег	7	delete_tag
28	Can view Тег	7	view_tag
29	Can add Категория	8	add_category
30	Can change Категория	8	change_category
31	Can delete Категория	8	delete_category
32	Can view Категория	8	view_category
33	Can add Статья	9	add_news
34	Can change Статья	9	change_news
35	Can delete Статья	9	delete_news
36	Can view Статья	9	view_news
37	Can add attachment	10	add_attachment
38	Can change attachment	10	change_attachment
39	Can delete attachment	10	delete_attachment
40	Can view attachment	10	view_attachment
41	Can add Комментарий	11	add_comment
42	Can change Комментарий	11	change_comment
43	Can delete Комментарий	11	delete_comment
44	Can view Комментарий	11	view_comment
45	Can add Комментарий	12	add_comments
46	Can change Комментарий	12	change_comments
47	Can delete Комментарий	12	delete_comments
48	Can view Комментарий	12	view_comments
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$320000$QlR8ceHEoimBL42GcQsgKe$PUrCVX7Gp//varFo/p/ERJQ8T86GsnmjkuW3/keUTzw=	2022-01-27 13:34:41.502385+03	t	admin			cat.d@yandex.ru	t	t	2022-01-27 00:57:47.994851+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
9	2022-01-27 01:06:26.545157+03	2	Сатурн	1	[{"added": {}}]	9	2
10	2022-01-27 01:11:39.512184+03	3	Нептун	1	[{"added": {}}]	9	2
11	2022-01-27 01:19:18.945278+03	4	Юпитер	1	[{"added": {}}]	9	2
12	2022-01-27 02:06:29.516556+03	11	admin	3		12	2
13	2022-01-27 02:07:58.842455+03	4	Юпитер	2	[{"changed": {"fields": ["\\u041c\\u0438\\u043d. \\u0442\\u0435\\u043a\\u0441\\u0442", "\\u0422\\u0435\\u043a\\u0441\\u0442 \\u0421\\u0442\\u0430\\u0442\\u044c\\u0438"]}}]	9	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	post	tag
8	post	category
9	post	news
10	django_summernote	attachment
11	post	comment
12	post	comments
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-01-26 20:03:42.14269+03
2	auth	0001_initial	2022-01-26 20:03:42.399488+03
3	admin	0001_initial	2022-01-26 20:03:42.478219+03
4	admin	0002_logentry_remove_auto_add	2022-01-26 20:03:42.502814+03
5	admin	0003_logentry_add_action_flag_choices	2022-01-26 20:03:42.532814+03
6	contenttypes	0002_remove_content_type_name	2022-01-26 20:03:42.597815+03
7	auth	0002_alter_permission_name_max_length	2022-01-26 20:03:42.636813+03
8	auth	0003_alter_user_email_max_length	2022-01-26 20:03:42.662816+03
9	auth	0004_alter_user_username_opts	2022-01-26 20:03:42.687813+03
10	auth	0005_alter_user_last_login_null	2022-01-26 20:03:42.709831+03
11	auth	0006_require_contenttypes_0002	2022-01-26 20:03:42.723825+03
12	auth	0007_alter_validators_add_error_messages	2022-01-26 20:03:42.789828+03
13	auth	0008_alter_user_username_max_length	2022-01-26 20:03:42.834827+03
14	auth	0009_alter_user_last_name_max_length	2022-01-26 20:03:42.862825+03
15	auth	0010_alter_group_name_max_length	2022-01-26 20:03:42.892826+03
16	auth	0011_update_proxy_permissions	2022-01-26 20:03:42.921826+03
17	auth	0012_alter_user_first_name_max_length	2022-01-26 20:03:42.954878+03
18	sessions	0001_initial	2022-01-26 20:03:43.005873+03
19	post	0001_initial	2022-01-26 21:05:18.558885+03
20	django_summernote	0001_initial	2022-01-26 22:35:53.4607+03
21	django_summernote	0002_update-help_text	2022-01-26 22:35:53.482062+03
22	django_summernote	0003_alter_attachment_id	2022-01-26 22:41:29.708644+03
23	post	0002_comment	2022-01-26 23:47:53.390031+03
24	post	0003_comments_delete_comment	2022-01-27 00:03:47.636544+03
25	post	0004_alter_comments_created	2022-01-27 00:04:56.342472+03
26	post	0005_alter_comments_moderation	2022-01-27 00:28:31.779568+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wjxzdar7ftavfwhwxn9fv0ury1n2lxzf	.eJxVjEEOwiAQAP_C2RAoIItH776BLMsiVUOT0p6MfzckPeh1ZjJvEXHfatw7r3HO4iK0OP2yhPTkNkR-YLsvkpa2rXOSI5GH7fK2ZH5dj_ZvULHXsWXjAwNPmgCBQFsFYLyzRmEKnooG8OrsKKEilW3RRqspmVTAAZcgPl_FBzdI:1nClmn:qrKlSrf2P7Mq7fWUMgpv8QyNrTG47nMSFjBK2-cWLvE	2022-02-09 20:08:45.527248+03
3pw8edrpf8mrwarvn8fblccycn0gerfu	.eJxVjDsOwjAQBe_iGln-ELympOcM1np3jQPIkeKkQtwdIqWA9s3Me6mE61LT2mVOI6uzcurwu2Wkh7QN8B3bbdI0tWUes94UvdOurxPL87K7fwcVe_3WIoYHyMRGSApEDN7bE4kD5mMWgAg-ZAfWxjI4QF8IWKwpzDYginp_AA4zOQM:1nCqIl:mRAbN8Ntqp-3nO0j8bZtLmSXixHc0FVl779NdWcZ4_s	2022-02-10 00:58:03.118976+03
lww1sdlzea2u2glog4884ttqxp4z7cd6	.eJxVjDsOwjAQBe_iGln-ELympOcM1np3jQPIkeKkQtwdIqWA9s3Me6mE61LT2mVOI6uzcurwu2Wkh7QN8B3bbdI0tWUes94UvdOurxPL87K7fwcVe_3WIoYHyMRGSApEDN7bE4kD5mMWgAg-ZAfWxjI4QF8IWKwpzDYginp_AA4zOQM:1nD26z:MnNcGH7-WJNgdihTab_-jjO0vjZ1F3SD8Lotm_dEc4A	2022-02-10 13:34:41.513384+03
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
1	Космос	django-summernote/2022-01-26/02ed3b4a-88d9-47fb-bb62-c6be06d6bcb8.jpg	2022-01-26 22:39:44.497097+03
2	mid_135490_1118.jpg	django-summernote/2022-01-26/8f54fdd9-5f6d-49de-99e0-a4a721dc97b9.jpg	2022-01-26 22:44:19.726099+03
3	mid_135490_1118.jpg	django-summernote/2022-01-26/8c058ef1-0dd4-496e-bda4-1b9b9ec01612.jpg	2022-01-26 22:44:52.80028+03
4	mid_135490_1118.jpg	django-summernote/2022-01-26/ffffb8fd-12c1-46e9-8465-fb758f0f5f0a.jpg	2022-01-26 22:47:03.152997+03
5	ffdb6696c34ad4211752cd4758cc8cb012_resize_2000x2000_same_2c50a3.jpg	django-summernote/2022-01-27/6135f55e-b641-4fc1-af92-5a50d44818a1.jpg	2022-01-27 01:04:17.218538+03
6	ffdb6696c34ad4211752cd4758cc8cb012_resize_2000x2000_same_2c50a3.jpg	django-summernote/2022-01-27/d856eeaf-5b71-45c9-95d9-b588e86eee6c.jpg	2022-01-27 01:04:35.285856+03
7	neptun.png	django-summernote/2022-01-27/1e936111-3917-4e49-9bd1-d73524d11b4d.png	2022-01-27 01:10:46.680651+03
8	neptun.png	django-summernote/2022-01-27/493aa095-158a-4fc7-a277-81f7c7d85bd2.png	2022-01-27 01:11:15.35179+03
9	GettyImages-10125776-58b873b53df78c353cb809ca.jpg	django-summernote/2022-01-27/f38413ae-2e5a-4d79-8248-5dcb4665cfc0.jpg	2022-01-27 01:17:21.688145+03
10	GettyImages-10125776-58b873b53df78c353cb809ca.jpg	django-summernote/2022-01-27/cda2283e-585f-427d-906d-99b3fa2a7616.jpg	2022-01-27 01:18:44.82402+03
\.


--
-- Data for Name: post_category; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.post_category (id, title) FROM stdin;
1	Космос
\.


--
-- Data for Name: post_comments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.post_comments (id, text, created, moderation, new_id, user_id) FROM stdin;
4	Здорово!	2022-01-27 01:07:10.949641+03	f	2	2
5	Красивая картинка!	2022-01-27 01:07:26.17466+03	f	2	2
6	Спасибо за информацию.	2022-01-27 01:07:47.787968+03	f	2	2
7	Тест комментов	2022-01-27 01:12:38.401319+03	f	3	2
8	Отлично!	2022-01-27 01:12:58.923029+03	f	3	2
9	Интересно..	2022-01-27 01:13:34.383892+03	f	3	2
10	Красивая картинка!	2022-01-27 01:20:17.897509+03	f	4	2
12	Тест	2022-01-27 02:07:13.163869+03	f	3	2
13	Тест комментов	2022-01-27 02:08:20.30227+03	f	4	2
\.


--
-- Data for Name: post_news; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.post_news (id, title, text_min, text, created, description, keywords, category_id, user_id) FROM stdin;
2	Сатурн	<p><span style="font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif;">Сатурн</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;— шестая планета</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;по удалённости от Солнца</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;и вторая по размерам планета в Солнечной системе</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;после Юпитера.</span></p><p><img src="/media/django-summernote/2022-01-27/6135f55e-b641-4fc1-af92-5a50d44818a1.jpg" style="width: 25%;"><br></p><p><br></p>	<p><span style="font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif;">Сатурн</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;— шестая планета</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;по удалённости от Солнца</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;и вторая по размерам планета в Солнечной системе</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;после Юпитера.</span></p><p><span style="color: rgb(32, 33, 34); font-family: sans-serif;">Сатурн обладает заметной системой колец, состоящей главным образом из частичек льда, меньшего количества тяжёлых элементов и пыли.</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;Вокруг планеты обращается 82 известных на данный момент спутника</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">. Титан</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;— самый крупный из них, а также второй по размерам спутник в Солнечной системе</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">, который превосходит по своим размерам Меркурий</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;и обладает единственной среди спутников планет Солнечной системы плотной атмосферой.</span></p><p><span style="color: rgb(32, 33, 34); font-family: sans-serif;">Материал с Википедии, свободной энциклопедии.&nbsp;</span></p><p><img src="/media/django-summernote/2022-01-27/d856eeaf-5b71-45c9-95d9-b588e86eee6c.jpg" style="width: 698px;"><span style="color: rgb(32, 33, 34); font-family: sans-serif;"><br></span></p>	2022-01-27 01:06:26.521158+03	Планета с кольцами	Сатурн, планета с кольцами	1	2
3	Нептун	<p><span style="font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif;">Нептун</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;— восьмая и самая дальняя от С</span>олнца<span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;планета Солнечной системы</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">.</span></p><p><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;</span><img src="/media/django-summernote/2022-01-27/1e936111-3917-4e49-9bd1-d73524d11b4d.png" style="width: 25%;"><br></p>	<p><span style="font-weight: 700; color: rgb(32, 33, 34); font-family: sans-serif;">Нептун</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;— восьмая и самая дальняя от С</span>олнца<span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;планета Солнечной системы</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">. Его масса</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;больше чем у Земли в 17,2&nbsp;раза и является третьей среди планет Солнечной системы, а по экваториальному диаметру</span><span style="color: rgb(32, 33, 34); font-family: sans-serif;">&nbsp;Нептун занимает четвёртое место, превосходя Землю в 3,9&nbsp;раза</span><sup id="cite_ref-OXFORD_11-0" class="reference" style="font-size: 11.2px; line-height: 1em; unicode-bidi: isolate; white-space: nowrap; color: rgb(32, 33, 34); font-family: sans-serif;"><a href="https://ru.wikipedia.org/wiki/%D0%9D%D0%B5%D0%BF%D1%82%D1%83%D0%BD#cite_note-OXFORD-11" style="background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(6, 69, 173);">[10]</a></sup><span style="color: rgb(32, 33, 34); font-family: sans-serif;">. Планета названа в честь Нептуна&nbsp;— римского бога морей.&nbsp;</span></p><p><img src="/media/django-summernote/2022-01-27/493aa095-158a-4fc7-a277-81f7c7d85bd2.png" style="width: 698px;"><span style="color: rgb(32, 33, 34); font-family: sans-serif;"><br></span><br></p>	2022-01-27 01:11:39.503183+03	Нептун	далекая планета, Нептун	1	2
4	Юпитер	<p><span style="font-size: 14px;"><b>Юпитер</b> - самая большая планета&nbsp;&nbsp;</span><span style="font-family: &quot;YS Text&quot;, Arial, Helvetica, sans-serif; font-size: 14px;">Солнечной системы.</span></p><p><img src="/media/django-summernote/2022-01-27/f38413ae-2e5a-4d79-8248-5dcb4665cfc0.jpg" style="width: 25%;"><span style="font-family: &quot;YS Text&quot;, Arial, Helvetica, sans-serif; font-size: 14px;"><br></span></p>	<p><span style="font-weight: 700;">Юпитер</span>&nbsp;- самая большая планета&nbsp;&nbsp;<span style="font-family: &quot;YS Text&quot;, Arial, Helvetica, sans-serif;">Солнечной системы.&nbsp;</span></p><p style="margin-top: 10px; line-height: 1.5; padding-left: 5px; padding-right: 5px; word-break: break-word; color: rgb(73, 73, 73); font-family: verdana, &quot;Open Sans&quot;, sans-serif;"><span style="font-family: Arial;">Планета была известна с древних времен и ее назвали в честь римского бога. В то время у планеты&nbsp;было много имен и на протяжении всей истории Римской империи ему оказывали наибольшее внимание. Римляне назвали планету именем их царя богов, Юпитера, который также был богом неба и грома.</span></p><p style="margin-top: 10px; line-height: 1.5; padding-left: 5px; padding-right: 5px; word-break: break-word; color: rgb(73, 73, 73); font-family: verdana, &quot;Open Sans&quot;, sans-serif;"><span style="font-family: Arial;">Юпитер находится за поясом астероидов и почти полностью состоит из газов, преимущественно – водорода и гелия. Масса Юпитера настолько огромна (М = 1,9∙1027 кг), что почти в 2,5 раза превышает массу всех вместе взятых планет солнечной системы.</span></p><p><img src="/media/django-summernote/2022-01-27/cda2283e-585f-427d-906d-99b3fa2a7616.jpg" style="width: 698px;"><br></p>	2022-01-27 01:19:18.940236+03	Самая большая планета	Юпитер, самая большая планета	1	2
\.


--
-- Data for Name: post_news_tags; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.post_news_tags (id, news_id, tag_id) FROM stdin;
2	2	1
3	3	1
4	4	1
\.


--
-- Data for Name: post_tag; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.post_tag (id, title) FROM stdin;
1	Планеты
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 13, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 10, true);


--
-- Name: post_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.post_category_id_seq', 1, true);


--
-- Name: post_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.post_comments_id_seq', 13, true);


--
-- Name: post_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.post_news_id_seq', 4, true);


--
-- Name: post_news_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.post_news_tags_id_seq', 4, true);


--
-- Name: post_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.post_tag_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: post_category post_category_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_category
    ADD CONSTRAINT post_category_pkey PRIMARY KEY (id);


--
-- Name: post_comments post_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id);


--
-- Name: post_news post_news_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news
    ADD CONSTRAINT post_news_pkey PRIMARY KEY (id);


--
-- Name: post_news_tags post_news_tags_news_id_tag_id_a53de087_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news_tags
    ADD CONSTRAINT post_news_tags_news_id_tag_id_a53de087_uniq UNIQUE (news_id, tag_id);


--
-- Name: post_news_tags post_news_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news_tags
    ADD CONSTRAINT post_news_tags_pkey PRIMARY KEY (id);


--
-- Name: post_tag post_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_tag
    ADD CONSTRAINT post_tag_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: post_comments_new_id_14bb95c3; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_comments_new_id_14bb95c3 ON public.post_comments USING btree (new_id);


--
-- Name: post_comments_user_id_540f5634; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_comments_user_id_540f5634 ON public.post_comments USING btree (user_id);


--
-- Name: post_news_category_id_fae36bbe; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_news_category_id_fae36bbe ON public.post_news USING btree (category_id);


--
-- Name: post_news_tags_news_id_579db3b1; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_news_tags_news_id_579db3b1 ON public.post_news_tags USING btree (news_id);


--
-- Name: post_news_tags_tag_id_8b424dce; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_news_tags_tag_id_8b424dce ON public.post_news_tags USING btree (tag_id);


--
-- Name: post_news_user_id_47d76281; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX post_news_user_id_47d76281 ON public.post_news USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_comments post_comments_new_id_14bb95c3_fk_post_news_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_new_id_14bb95c3_fk_post_news_id FOREIGN KEY (new_id) REFERENCES public.post_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_comments post_comments_user_id_540f5634_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_user_id_540f5634_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_news post_news_category_id_fae36bbe_fk_post_category_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news
    ADD CONSTRAINT post_news_category_id_fae36bbe_fk_post_category_id FOREIGN KEY (category_id) REFERENCES public.post_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_news_tags post_news_tags_news_id_579db3b1_fk_post_news_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news_tags
    ADD CONSTRAINT post_news_tags_news_id_579db3b1_fk_post_news_id FOREIGN KEY (news_id) REFERENCES public.post_news(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_news_tags post_news_tags_tag_id_8b424dce_fk_post_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news_tags
    ADD CONSTRAINT post_news_tags_tag_id_8b424dce_fk_post_tag_id FOREIGN KEY (tag_id) REFERENCES public.post_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_news post_news_user_id_47d76281_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.post_news
    ADD CONSTRAINT post_news_user_id_47d76281_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

