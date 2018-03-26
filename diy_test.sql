--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answer; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE answer (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted boolean NOT NULL,
    locale character varying(255) NOT NULL,
    question_id bigint NOT NULL,
    text text NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    author_id bigint
);


ALTER TABLE answer OWNER TO diy_staging;

--
-- Name: answer_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_id_seq OWNER TO diy_staging;

--
-- Name: answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE answer_id_seq OWNED BY answer.id;


--
-- Name: answer_photo; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE answer_photo (
    id bigint NOT NULL,
    answer_id bigint,
    photo_id bigint
);


ALTER TABLE answer_photo OWNER TO diy_staging;

--
-- Name: answer_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE answer_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_photo_id_seq OWNER TO diy_staging;

--
-- Name: answer_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE answer_photo_id_seq OWNED BY answer_photo.id;


--
-- Name: answer_translation; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE answer_translation (
    id bigint NOT NULL,
    locale character varying(255) NOT NULL,
    text character varying(255) NOT NULL,
    answer_id bigint
);


ALTER TABLE answer_translation OWNER TO diy_staging;

--
-- Name: answer_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE answer_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_translation_id_seq OWNER TO diy_staging;

--
-- Name: answer_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE answer_translation_id_seq OWNED BY answer_translation.id;


--
-- Name: answer_video; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE answer_video (
    id bigint NOT NULL,
    answer_id bigint,
    video_id bigint
);


ALTER TABLE answer_video OWNER TO diy_staging;

--
-- Name: answer_video_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE answer_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE answer_video_id_seq OWNER TO diy_staging;

--
-- Name: answer_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE answer_video_id_seq OWNED BY answer_video.id;


--
-- Name: author; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE author (
    id bigint NOT NULL,
    avatarheight integer,
    avatarurl character varying(255),
    avatarwidth integer,
    displayname character varying(255) NOT NULL,
    userid integer NOT NULL
);


ALTER TABLE author OWNER TO diy_staging;

--
-- Name: category; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE category (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted boolean NOT NULL,
    locale character varying(255) NOT NULL,
    text text NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE category OWNER TO diy_staging;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE category_id_seq OWNER TO diy_staging;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE category_id_seq OWNED BY category.id;


--
-- Name: comment; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE comment (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted boolean NOT NULL,
    locale character varying(255) NOT NULL,
    project_id bigint NOT NULL,
    text text NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    author_id bigint
);


ALTER TABLE comment OWNER TO diy_staging;

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comment_id_seq OWNER TO diy_staging;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE comment_id_seq OWNED BY comment.id;


--
-- Name: comment_photo; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE comment_photo (
    id bigint NOT NULL,
    comment_id bigint,
    photo_id bigint
);


ALTER TABLE comment_photo OWNER TO diy_staging;

--
-- Name: comment_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE comment_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comment_photo_id_seq OWNER TO diy_staging;

--
-- Name: comment_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE comment_photo_id_seq OWNED BY comment_photo.id;


--
-- Name: comment_video; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE comment_video (
    id bigint NOT NULL,
    comment_id bigint,
    video_id bigint
);


ALTER TABLE comment_video OWNER TO diy_staging;

--
-- Name: comment_video_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE comment_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comment_video_id_seq OWNER TO diy_staging;

--
-- Name: comment_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE comment_video_id_seq OWNED BY comment_video.id;


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO diy_staging;

--
-- Name: language; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE language (
    id bigint NOT NULL,
    code character varying(255),
    domain character varying(255),
    name character varying(255)
);


ALTER TABLE language OWNER TO diy_staging;

--
-- Name: language_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE language_id_seq OWNER TO diy_staging;

--
-- Name: language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE language_id_seq OWNED BY language.id;


--
-- Name: photo; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE photo (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    height integer NOT NULL,
    path character varying(255) NOT NULL,
    width integer NOT NULL
);


ALTER TABLE photo OWNER TO diy_staging;

--
-- Name: photo_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photo_id_seq OWNER TO diy_staging;

--
-- Name: photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE photo_id_seq OWNED BY photo.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE project (
    id bigint NOT NULL,
    approved boolean NOT NULL,
    categoryid bigint,
    cost double precision NOT NULL,
    created_at timestamp without time zone NOT NULL,
    deleted boolean NOT NULL,
    description text NOT NULL,
    difficulty character varying(255) NOT NULL,
    disapproved boolean NOT NULL,
    duration character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    pending boolean NOT NULL,
    title text NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    view_count integer NOT NULL,
    author_id bigint
);


ALTER TABLE project OWNER TO diy_staging;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project_id_seq OWNER TO diy_staging;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE project_id_seq OWNED BY project.id;


--
-- Name: project_material; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE project_material (
    id bigint NOT NULL,
    text character varying(255) NOT NULL,
    project_id bigint
);


ALTER TABLE project_material OWNER TO diy_staging;

--
-- Name: project_material_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE project_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE project_material_id_seq OWNER TO diy_staging;

--
-- Name: project_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE project_material_id_seq OWNED BY project_material.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE question (
    id bigint NOT NULL,
    approved boolean NOT NULL,
    categoryid bigint,
    created_at timestamp without time zone NOT NULL,
    deleted boolean NOT NULL,
    description text NOT NULL,
    disapproved boolean NOT NULL,
    locale character varying(255),
    pending boolean NOT NULL,
    title text NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    view_count integer NOT NULL,
    author_id bigint
);


ALTER TABLE question OWNER TO diy_staging;

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE question_id_seq OWNER TO diy_staging;

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE question_id_seq OWNED BY question.id;


--
-- Name: question_photo; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE question_photo (
    id bigint NOT NULL,
    photo_id bigint,
    question_id bigint NOT NULL
);


ALTER TABLE question_photo OWNER TO diy_staging;

--
-- Name: question_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE question_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE question_photo_id_seq OWNER TO diy_staging;

--
-- Name: question_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE question_photo_id_seq OWNED BY question_photo.id;


--
-- Name: question_video; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE question_video (
    id bigint NOT NULL,
    question_id bigint,
    video_id bigint
);


ALTER TABLE question_video OWNER TO diy_staging;

--
-- Name: question_video_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE question_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE question_video_id_seq OWNER TO diy_staging;

--
-- Name: question_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE question_video_id_seq OWNED BY question_video.id;


--
-- Name: step; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE step (
    id bigint NOT NULL,
    text text NOT NULL,
    project_id bigint
);


ALTER TABLE step OWNER TO diy_staging;

--
-- Name: step_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE step_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE step_id_seq OWNER TO diy_staging;

--
-- Name: step_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE step_id_seq OWNED BY step.id;


--
-- Name: step_photo; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE step_photo (
    id bigint NOT NULL,
    photo_id bigint,
    step_id bigint
);


ALTER TABLE step_photo OWNER TO diy_staging;

--
-- Name: step_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE step_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE step_photo_id_seq OWNER TO diy_staging;

--
-- Name: step_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE step_photo_id_seq OWNED BY step_photo.id;


--
-- Name: step_video; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE step_video (
    id bigint NOT NULL,
    step_id bigint,
    video_id bigint
);


ALTER TABLE step_video OWNER TO diy_staging;

--
-- Name: step_video_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE step_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE step_video_id_seq OWNER TO diy_staging;

--
-- Name: step_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE step_video_id_seq OWNED BY step_video.id;


--
-- Name: video; Type: TABLE; Schema: public; Owner: diy_staging
--

CREATE TABLE video (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    host character varying(255) NOT NULL,
    length double precision NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE video OWNER TO diy_staging;

--
-- Name: video_id_seq; Type: SEQUENCE; Schema: public; Owner: diy_staging
--

CREATE SEQUENCE video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE video_id_seq OWNER TO diy_staging;

--
-- Name: video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diy_staging
--

ALTER SEQUENCE video_id_seq OWNED BY video.id;


--
-- Name: answer id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer ALTER COLUMN id SET DEFAULT nextval('answer_id_seq'::regclass);


--
-- Name: answer_photo id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_photo ALTER COLUMN id SET DEFAULT nextval('answer_photo_id_seq'::regclass);


--
-- Name: answer_translation id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_translation ALTER COLUMN id SET DEFAULT nextval('answer_translation_id_seq'::regclass);


--
-- Name: answer_video id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_video ALTER COLUMN id SET DEFAULT nextval('answer_video_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY category ALTER COLUMN id SET DEFAULT nextval('category_id_seq'::regclass);


--
-- Name: comment id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);


--
-- Name: comment_photo id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_photo ALTER COLUMN id SET DEFAULT nextval('comment_photo_id_seq'::regclass);


--
-- Name: comment_video id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_video ALTER COLUMN id SET DEFAULT nextval('comment_video_id_seq'::regclass);


--
-- Name: language id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY language ALTER COLUMN id SET DEFAULT nextval('language_id_seq'::regclass);


--
-- Name: photo id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY photo ALTER COLUMN id SET DEFAULT nextval('photo_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project ALTER COLUMN id SET DEFAULT nextval('project_id_seq'::regclass);


--
-- Name: project_material id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project_material ALTER COLUMN id SET DEFAULT nextval('project_material_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question ALTER COLUMN id SET DEFAULT nextval('question_id_seq'::regclass);


--
-- Name: question_photo id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_photo ALTER COLUMN id SET DEFAULT nextval('question_photo_id_seq'::regclass);


--
-- Name: question_video id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_video ALTER COLUMN id SET DEFAULT nextval('question_video_id_seq'::regclass);


--
-- Name: step id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step ALTER COLUMN id SET DEFAULT nextval('step_id_seq'::regclass);


--
-- Name: step_photo id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_photo ALTER COLUMN id SET DEFAULT nextval('step_photo_id_seq'::regclass);


--
-- Name: step_video id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_video ALTER COLUMN id SET DEFAULT nextval('step_video_id_seq'::regclass);


--
-- Name: video id; Type: DEFAULT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY video ALTER COLUMN id SET DEFAULT nextval('video_id_seq'::regclass);


--
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY answer (id, created_at, deleted, locale, question_id, text, updated_at, author_id) FROM stdin;
\.


--
-- Data for Name: answer_photo; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY answer_photo (id, answer_id, photo_id) FROM stdin;
\.


--
-- Data for Name: answer_translation; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY answer_translation (id, locale, text, answer_id) FROM stdin;
\.


--
-- Data for Name: answer_video; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY answer_video (id, answer_id, video_id) FROM stdin;
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY author (id, avatarheight, avatarurl, avatarwidth, displayname, userid) FROM stdin;
1	\N	\N	\N	diy_user_staging	4394714
2	\N	\N	\N	diy_user_staging	4394714
3	\N	\N	\N	diy_user_staging	4394714
4	\N	\N	\N	diy_user_staging	4394714
5	\N	\N	\N	diy_user_staging	4394714
6	\N	\N	\N	diy_user_staging	4394714
7	\N	\N	\N	diy_user_staging	4394714
8	\N	\N	\N	diy_user_staging	4394714
9	\N	\N	\N	diy_user_staging	4394714
10	\N	\N	\N	diy_user_staging	4394714
11	\N	\N	\N	kristian.herpel	4394739
12	\N	\N	\N	kristian.herpel	4394739
13	\N	\N	\N	kristian.herpel	4394739
14	\N	\N	\N	kristian.herpel	4394739
15	\N	\N	\N	kristian.herpel	4394739
16	\N	\N	\N	kristian.herpel	4394739
17	\N	\N	\N	kristian.herpel	4394739
18	\N	\N	\N	kristian.herpel	4394739
19	\N	\N	\N	kristian.herpel	4394739
20	\N	\N	\N	kristian.herpel	4394739
21	\N	\N	\N	kristian.herpel	4394739
22	\N	\N	\N	kristian.herpel	4394739
23	\N	\N	\N	kristian.herpel	4394739
24	\N	\N	\N	kristian.herpel	4394739
25	\N	\N	\N	kristian.herpel	4394739
26	\N	\N	\N	kristian.herpel	4394739
27	\N	\N	\N	kristian.herpel	4394739
28	\N	\N	\N	kristian.herpel	4394739
29	\N	\N	\N	kristian.herpel	4394739
30	\N	\N	\N	kristian.herpel	4394739
31	\N	\N	\N	kristian.herpel	4394739
32	\N	\N	\N	kristian.herpel	4394739
33	\N	\N	\N	kristian.herpel	4394739
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY category (id, created_at, deleted, locale, text, updated_at) FROM stdin;
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY comment (id, created_at, deleted, locale, project_id, text, updated_at, author_id) FROM stdin;
1	2018-03-26 08:41:15.043	f	en	1	fgfdfg	2018-03-26 08:41:15.043	2
\.


--
-- Data for Name: comment_photo; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY comment_photo (id, comment_id, photo_id) FROM stdin;
\.


--
-- Data for Name: comment_video; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY comment_video (id, comment_id, video_id) FROM stdin;
\.


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY language (id, code, domain, name) FROM stdin;
\.


--
-- Data for Name: photo; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY photo (id, created_at, height, path, width) FROM stdin;
1	2018-03-26 08:23:07.798	0	http://images.homify.com/image/upload/v1522052573/b6tgidy2cxijvdumkrdg.png	0
2	2018-03-26 09:54:45.39	0	string	0
3	2018-03-26 09:55:14.587	0	string	0
4	2018-03-26 09:57:23.795	0	string	0
5	2018-03-26 09:59:53.348	0	string	0
6	2018-03-26 12:05:45.799	100	url	100
7	2018-03-26 12:05:45.872	200	url	200
8	2018-03-26 12:07:05.961	100	url	100
9	2018-03-26 12:07:06.029	200	url	200
10	2018-03-26 12:07:06.917	100	url	100
11	2018-03-26 12:07:06.994	200	url	200
12	2018-03-26 12:07:56.114	100	url	100
13	2018-03-26 12:07:56.194	200	url	200
14	2018-03-26 12:07:57.094	100	url	100
15	2018-03-26 12:07:57.168	200	url	200
16	2018-03-26 12:08:43.9	100	url	100
17	2018-03-26 12:08:43.971	200	url	200
18	2018-03-26 12:08:44.933	100	url	100
19	2018-03-26 12:08:45.007	200	url	200
20	2018-03-26 12:12:16.604	100	url	100
21	2018-03-26 12:12:16.684	200	url	200
22	2018-03-26 12:12:17.375	100	url	100
23	2018-03-26 12:12:17.46	200	url	200
24	2018-03-26 12:14:08.524	100	url	100
25	2018-03-26 12:14:08.593	200	url	200
26	2018-03-26 12:14:09.214	100	url	100
27	2018-03-26 12:14:09.285	200	url	200
28	2018-03-26 10:59:37.71	100	url	100
29	2018-03-26 10:59:37.714	200	url	200
30	2018-03-26 10:59:37.85	100	url	100
31	2018-03-26 10:59:37.854	200	url	200
32	2018-03-26 13:20:51.85	100	url	100
33	2018-03-26 13:20:51.922	200	url	200
34	2018-03-26 13:26:30.7	100	url	100
35	2018-03-26 13:26:30.772	200	url	200
36	2018-03-26 13:31:16.789	100	url	100
37	2018-03-26 13:31:16.87	200	url	200
38	2018-03-26 13:31:17.91	100	url	100
39	2018-03-26 13:31:17.992	200	url	200
40	2018-03-26 13:41:55.388	100	url	100
41	2018-03-26 13:41:55.463	200	url	200
42	2018-03-26 13:41:56.409	100	url	100
43	2018-03-26 13:41:56.482	200	url	200
44	2018-03-26 13:43:37.838	100	url	100
45	2018-03-26 13:43:37.922	200	url	200
46	2018-03-26 13:57:53.932	100	url	100
47	2018-03-26 13:57:54.035	200	url	200
48	2018-03-26 13:57:54.805	100	url	100
49	2018-03-26 13:57:54.874	200	url	200
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY project (id, approved, categoryid, cost, created_at, deleted, description, difficulty, disapproved, duration, locale, pending, title, updated_at, view_count, author_id) FROM stdin;
7	f	\N	0	2018-03-26 12:05:45.642	f	description	HARD	f	duration	de	t	title	2018-03-26 12:05:45.645	9	11
16	f	\N	0	2018-03-26 13:31:16.619	f	description	HARD	f	duration	de	f	title updated	2018-03-26 13:31:18.194	5	20
17	f	\N	0	2018-03-26 13:41:55.231	f	description	HARD	f	duration	de	f	title updated	2018-03-26 13:41:56.648	5	21
18	f	\N	0	2018-03-26 13:43:37.619	f	description	HARD	f	duration	de	t	title	2018-03-26 13:43:37.624	4	22
19	f	\N	0	2018-03-26 13:57:53.541	f	description	HARD	f	duration	de	f	title updated	2018-03-26 13:57:55.038	5	23
10	f	\N	0	2018-03-26 12:08:43.737	t	description	HARD	f	duration	de	f	title updated	2018-03-26 12:08:46.252	1	14
13	f	\N	0	2018-03-26 10:59:37.691	t	description	HARD	f	duration	de	f	title updated	2018-03-26 10:59:37.966	1	17
11	f	\N	0	2018-03-26 12:12:16.436	t	description	HARD	f	duration	de	f	title updated	2018-03-26 12:12:18.758	1	15
12	f	\N	0	2018-03-26 12:14:08.375	t	description	HARD	f	duration	de	f	title updated	2018-03-26 12:14:10.644	1	16
20	f	\N	0	2018-03-26 14:00:48.403	f	filterTestDescription	HARD	f	duration	en	t	filterTestTitle	2018-03-26 14:00:48.408	4	24
21	f	\N	0	2018-03-26 14:00:49.001	f	filterTestDescription	HARD	f	duration	es	t	filterTestTitle	2018-03-26 14:00:49.001	4	25
22	f	\N	0	2018-03-26 14:03:25.839	f	filterTestDescription	HARD	f	duration	en	t	filterTestTitle	2018-03-26 14:03:25.844	3	26
23	f	\N	0	2018-03-26 14:03:26.601	f	filterTestDescription	HARD	f	duration	es	t	filterTestTitle	2018-03-26 14:03:26.601	3	27
3	t	0	0	2018-03-26 09:54:45.384	f	string	EASY	t	string	string	t	string	2018-03-26 09:54:45.384	10	6
8	f	\N	0	2018-03-26 12:07:05.812	f	description	HARD	f	duration	de	f	title updated	2018-03-26 12:07:07.085	9	12
2	f	\N	3	2018-03-26 09:45:34.791	f	test	HARD	f	22 hours	en	t	tttt	2018-03-26 09:45:34.791	19	5
9	f	\N	3	2018-03-26 12:07:55.937	f	description	HARD	f	12 hours	de	f	title updated	2018-03-26 10:55:22.955	15	13
1	f	\N	2	2018-03-26 08:23:07.794	f	dddddddddddddddddddddddddddddddd	EASY	f	1 hours	de	t	asddddddddddddddddddd	2018-03-26 08:23:07.794	26	1
14	f	\N	0	2018-03-26 13:20:51.699	f	description	HARD	f	duration	de	t	title	2018-03-26 13:20:51.702	4	18
15	f	\N	0	2018-03-26 13:26:30.543	f	description	HARD	f	duration	de	t	title	2018-03-26 13:26:30.549	4	19
5	t	0	0	2018-03-26 09:57:23.791	f	string	EASY	t	string	string	t	123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 	2018-03-26 09:57:23.791	10	8
25	f	\N	0	2018-03-26 14:10:47.715	f	filterTestDescription	HARD	f	duration	es	t	filterTestTitle	2018-03-26 14:10:47.715	1	29
6	t	0	0	2018-03-26 09:59:53.343	f	123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 	EASY	t	string	string	t	123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 	2018-03-26 09:59:53.343	8	9
24	f	\N	0	2018-03-26 14:10:47.088	f	filterTestDescription	HARD	f	duration	en	t	filterTestTitle	2018-03-26 14:10:47.094	1	28
26	f	\N	0	2018-03-26 14:15:35.857	f	filterTestDescription	HARD	f	duration	en	t	filterTestTitle	2018-03-26 14:15:35.859	0	30
27	f	\N	0	2018-03-26 14:15:36.566	f	filterTestDescription	HARD	f	duration	es	t	filterTestTitle	2018-03-26 14:15:36.566	0	31
4	t	0	0	2018-03-26 09:55:14.583	f	string	EASY	t	string	string	t	123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 	2018-03-26 09:55:14.583	11	7
28	f	\N	0	2018-03-26 14:28:47.02	f	filterTestDescription	HARD	f	duration	en	t	filterTestTitle	2018-03-26 14:28:47.024	0	32
29	f	\N	0	2018-03-26 14:28:47.449	f	filterTestDescription	HARD	f	duration	es	t	filterTestTitle	2018-03-26 14:28:47.449	0	33
\.


--
-- Data for Name: project_material; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY project_material (id, text, project_id) FROM stdin;
1	123	1
2	sss	2
3	aaa	2
4	eee	2
5	string	3
6	string	4
7	string	5
8	string	6
9	material1	7
10	material2	7
11	material1 Updated	8
12	material2 Updated	8
13	material1 Updated	9
14	material2 Updated	9
15	material1 Updated	10
16	material2 Updated	10
17	material1 Updated	11
18	material2 Updated	11
19	material1 Updated	12
20	material2 Updated	12
21	material1 Updated	9
22	material2 Updated	9
23	material1 Updated	13
24	material2 Updated	13
25	material1	14
26	material2	14
27	material1	15
28	material2	15
29	material1 Updated	16
30	material2 Updated	16
31	material1 Updated	17
32	material2 Updated	17
33	material1	18
34	material2	18
35	material1 Updated	19
36	material2 Updated	19
\.


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY question (id, approved, categoryid, created_at, deleted, description, disapproved, locale, pending, title, updated_at, view_count, author_id) FROM stdin;
1	f	\N	2018-03-26 09:32:09.289	f	Testing different video providers	f	en	t	Test	2018-03-26 09:32:09.289	8	3
2	f	\N	2018-03-26 09:38:55.621	f	This one has a vimeo video	f	en	t	Test 2	2018-03-26 09:38:55.621	4	4
3	f	\N	2018-03-26 10:00:41.135	t	Ensure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compu\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.Ensure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.Ensure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compu\n\nThe authenticity of host 'ec2-198-51-100-1.compu\n\nThe authenticity of host 'ec2-198-51-100-1.compuThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compuEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\nEnsure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot of the instance.\n\nIn a command-line shell, change directories to the location of the private key file that you created when you launched the instance.\n\nUse the chmod command to make sure that your private key file isn't publicly viewable. For example, if the name of your private key file is my-key-pair.pem, use the following command:\n\nchmod 400 /path/my-key-pair.pem\nUse the ssh command to connect to the instance. You specify the private key (.pem) file and user_name@public_dns_name. For example, if you used an Amazon Linux AMI, the user name is ec2-user.\n\nssh -i /path/my-key-pair.pem ec2-user@ec2-198-51-100-1.compute-1.amazonaws.com\nYou see a response like the following.\n\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu\nThe authenticity of host 'ec2-198-51-100-1.compu	f	en	t	Ensure that the instance is in the running state, not the pending state. The SSH HOST KEY FINGERPRINTS section is only available after the first boot 	2018-03-26 10:01:02.571	2	10
\.


--
-- Data for Name: question_photo; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY question_photo (id, photo_id, question_id) FROM stdin;
\.


--
-- Data for Name: question_video; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY question_video (id, question_id, video_id) FROM stdin;
1	1	1
2	2	2
\.


--
-- Data for Name: step; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY step (id, text, project_id) FROM stdin;
1	asdasd	1
2	vimeo test	2
3	youtube test	2
4	string	3
5	string	4
6	string	5
7	string	6
8	Step1	7
9	Step1 Updated	8
10	Step1 Updated	9
11	Step1 Updated	10
12	Step1 Updated	11
13	Step1 Updated	12
14	Step1 Updated	9
15	Step1 Updated	13
16	Step1	14
17	Step1	15
18	Step1 Updated	16
19	Step1 Updated	17
20	Step1	18
21	Step1 Updated	19
\.


--
-- Data for Name: step_photo; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY step_photo (id, photo_id, step_id) FROM stdin;
1	1	1
2	2	4
3	3	5
4	4	6
5	5	7
6	6	8
7	7	8
8	8	9
9	9	9
10	10	9
11	11	9
12	12	10
13	13	10
14	14	10
15	15	10
16	16	11
17	17	11
18	18	11
19	19	11
20	20	12
21	21	12
22	22	12
23	23	12
24	24	13
25	25	13
26	26	13
27	27	13
28	28	15
29	29	15
30	30	15
31	31	15
32	32	16
33	33	16
34	34	17
35	35	17
36	36	18
37	37	18
38	38	18
39	39	18
40	40	19
41	41	19
42	42	19
43	43	19
44	44	20
45	45	20
46	46	21
47	47	21
48	48	21
49	49	21
\.


--
-- Data for Name: step_video; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY step_video (id, step_id, video_id) FROM stdin;
1	2	3
2	3	4
3	4	5
4	5	6
5	6	7
6	7	8
7	14	9
8	16	10
9	17	11
10	18	12
11	18	13
12	19	14
13	19	15
14	20	16
15	21	17
16	21	18
\.


--
-- Data for Name: video; Type: TABLE DATA; Schema: public; Owner: diy_staging
--

COPY video (id, created_at, host, length, url) FROM stdin;
1	2018-03-26 09:32:09.291	https://www.youtube.com/watch?v=n0svuurLibQ	0	https://www.youtube.com/watch?v=n0svuurLibQ
2	2018-03-26 09:38:55.626	https://vimeo.com/channels/staffpicks/259623289	0	https://vimeo.com/channels/staffpicks/259623289
3	2018-03-26 09:45:34.797	https://vimeo.com/channels/staffpicks/259623289	0	https://vimeo.com/channels/staffpicks/259623289
4	2018-03-26 09:45:34.8	https://www.youtube.com/watch?v=NNfzIgFsXEA	0	https://www.youtube.com/watch?v=NNfzIgFsXEA
5	2018-03-26 09:54:45.392	string	0	string
6	2018-03-26 09:55:14.59	string	0	string
7	2018-03-26 09:57:23.797	string	0	string
8	2018-03-26 09:59:53.35	string	0	string
9	2018-03-26 10:55:22.953	https://www.youtube.com/watch?v=mayrzQynq1o	0	https://www.youtube.com/watch?v=mayrzQynq1o
10	2018-03-26 13:20:52.001	url	100	url
11	2018-03-26 13:26:30.844	url	100	url
12	2018-03-26 13:31:16.949	url	100	url
13	2018-03-26 13:31:18.075	url	100	url
14	2018-03-26 13:41:55.532	url	100	url
15	2018-03-26 13:41:56.554	url	100	url
16	2018-03-26 13:43:37.997	url	100	url
17	2018-03-26 13:57:54.109	url	100	url
18	2018-03-26 13:57:54.945	url	100	url
\.


--
-- Name: answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('answer_id_seq', 1, false);


--
-- Name: answer_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('answer_photo_id_seq', 1, false);


--
-- Name: answer_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('answer_translation_id_seq', 1, false);


--
-- Name: answer_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('answer_video_id_seq', 1, false);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('category_id_seq', 1, false);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('comment_id_seq', 1, true);


--
-- Name: comment_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('comment_photo_id_seq', 1, false);


--
-- Name: comment_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('comment_video_id_seq', 1, false);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('hibernate_sequence', 33, true);


--
-- Name: language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('language_id_seq', 1, false);


--
-- Name: photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('photo_id_seq', 49, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('project_id_seq', 29, true);


--
-- Name: project_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('project_material_id_seq', 36, true);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('question_id_seq', 3, true);


--
-- Name: question_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('question_photo_id_seq', 1, false);


--
-- Name: question_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('question_video_id_seq', 2, true);


--
-- Name: step_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('step_id_seq', 21, true);


--
-- Name: step_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('step_photo_id_seq', 49, true);


--
-- Name: step_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('step_video_id_seq', 16, true);


--
-- Name: video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diy_staging
--

SELECT pg_catalog.setval('video_id_seq', 18, true);


--
-- Name: answer_photo answer_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_photo
    ADD CONSTRAINT answer_photo_pkey PRIMARY KEY (id);


--
-- Name: answer answer_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (id);


--
-- Name: answer_translation answer_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_translation
    ADD CONSTRAINT answer_translation_pkey PRIMARY KEY (id);


--
-- Name: answer_video answer_video_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_video
    ADD CONSTRAINT answer_video_pkey PRIMARY KEY (id);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: comment_photo comment_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_photo
    ADD CONSTRAINT comment_photo_pkey PRIMARY KEY (id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: comment_video comment_video_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_video
    ADD CONSTRAINT comment_video_pkey PRIMARY KEY (id);


--
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);


--
-- Name: photo photo_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY photo
    ADD CONSTRAINT photo_pkey PRIMARY KEY (id);


--
-- Name: project_material project_material_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project_material
    ADD CONSTRAINT project_material_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: question_photo question_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_photo
    ADD CONSTRAINT question_photo_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: question_video question_video_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_video
    ADD CONSTRAINT question_video_pkey PRIMARY KEY (id);


--
-- Name: step_photo step_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_photo
    ADD CONSTRAINT step_photo_pkey PRIMARY KEY (id);


--
-- Name: step step_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step
    ADD CONSTRAINT step_pkey PRIMARY KEY (id);


--
-- Name: step_video step_video_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_video
    ADD CONSTRAINT step_video_pkey PRIMARY KEY (id);


--
-- Name: video video_pkey; Type: CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY video
    ADD CONSTRAINT video_pkey PRIMARY KEY (id);


--
-- Name: comment fk1jjloo6xwf7kl33cho74gtmi5; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT fk1jjloo6xwf7kl33cho74gtmi5 FOREIGN KEY (author_id) REFERENCES author(id);


--
-- Name: question_photo fk1kijn4b2xfrrrsteeu5knjcb6; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_photo
    ADD CONSTRAINT fk1kijn4b2xfrrrsteeu5knjcb6 FOREIGN KEY (photo_id) REFERENCES photo(id);


--
-- Name: project fk2n16ht1tgt05bwh4fjfyy6yi1; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project
    ADD CONSTRAINT fk2n16ht1tgt05bwh4fjfyy6yi1 FOREIGN KEY (author_id) REFERENCES author(id);


--
-- Name: question_photo fk61gc6ico9huwprv7ip0oipv3h; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_photo
    ADD CONSTRAINT fk61gc6ico9huwprv7ip0oipv3h FOREIGN KEY (question_id) REFERENCES question(id);


--
-- Name: project_material fk642dmg129447fvl4naei42yq4; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY project_material
    ADD CONSTRAINT fk642dmg129447fvl4naei42yq4 FOREIGN KEY (project_id) REFERENCES project(id);


--
-- Name: comment_video fk7tanu2c22sdb9nxvavk5hefow; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_video
    ADD CONSTRAINT fk7tanu2c22sdb9nxvavk5hefow FOREIGN KEY (comment_id) REFERENCES comment(id);


--
-- Name: step_video fk7ti4q6pe3xho5a4e1rbh9a6ks; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_video
    ADD CONSTRAINT fk7ti4q6pe3xho5a4e1rbh9a6ks FOREIGN KEY (step_id) REFERENCES step(id);


--
-- Name: answer_video fk87erg6f5i3tsxnhli1qe6b0tv; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_video
    ADD CONSTRAINT fk87erg6f5i3tsxnhli1qe6b0tv FOREIGN KEY (answer_id) REFERENCES answer(id);


--
-- Name: answer_video fk8ddj4kls6uqlp4ylfs4mribsc; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_video
    ADD CONSTRAINT fk8ddj4kls6uqlp4ylfs4mribsc FOREIGN KEY (video_id) REFERENCES video(id);


--
-- Name: answer_photo fkanqmo4fslpgmr0w5urjdar8nf; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_photo
    ADD CONSTRAINT fkanqmo4fslpgmr0w5urjdar8nf FOREIGN KEY (photo_id) REFERENCES photo(id);


--
-- Name: answer_translation fkco3o4hxryohduthxj2vgnuhxs; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_translation
    ADD CONSTRAINT fkco3o4hxryohduthxj2vgnuhxs FOREIGN KEY (answer_id) REFERENCES answer(id);


--
-- Name: question fkd07kpp4ud8wid0nt0dkcpw0nv; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question
    ADD CONSTRAINT fkd07kpp4ud8wid0nt0dkcpw0nv FOREIGN KEY (author_id) REFERENCES author(id);


--
-- Name: step_photo fkentv8euimh0xwk7fele865y4r; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_photo
    ADD CONSTRAINT fkentv8euimh0xwk7fele865y4r FOREIGN KEY (step_id) REFERENCES step(id);


--
-- Name: answer_photo fkijsdlqyswqj9wunbrl0examb8; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer_photo
    ADD CONSTRAINT fkijsdlqyswqj9wunbrl0examb8 FOREIGN KEY (answer_id) REFERENCES answer(id);


--
-- Name: question_video fkitkjyhoemj4deitpoeo1yn0qh; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_video
    ADD CONSTRAINT fkitkjyhoemj4deitpoeo1yn0qh FOREIGN KEY (question_id) REFERENCES question(id);


--
-- Name: step fkmffqrbl522vp7kgimlptdwwjd; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step
    ADD CONSTRAINT fkmffqrbl522vp7kgimlptdwwjd FOREIGN KEY (project_id) REFERENCES project(id);


--
-- Name: step_photo fknorxsv1v559whgyxaka0t9oiq; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_photo
    ADD CONSTRAINT fknorxsv1v559whgyxaka0t9oiq FOREIGN KEY (photo_id) REFERENCES photo(id);


--
-- Name: comment_photo fkonlpjpq13uhu1qyphucvhipo7; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_photo
    ADD CONSTRAINT fkonlpjpq13uhu1qyphucvhipo7 FOREIGN KEY (photo_id) REFERENCES photo(id);


--
-- Name: comment_photo fkp2uxjqjpcixeg0k5kgme8ahtw; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_photo
    ADD CONSTRAINT fkp2uxjqjpcixeg0k5kgme8ahtw FOREIGN KEY (comment_id) REFERENCES comment(id);


--
-- Name: question_video fkqv1tmf5f1g878v2dc3u9o09dm; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY question_video
    ADD CONSTRAINT fkqv1tmf5f1g878v2dc3u9o09dm FOREIGN KEY (video_id) REFERENCES video(id);


--
-- Name: step_video fkrb10t1x6y9im1lwyvc7nuxset; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY step_video
    ADD CONSTRAINT fkrb10t1x6y9im1lwyvc7nuxset FOREIGN KEY (video_id) REFERENCES video(id);


--
-- Name: answer fksmreumjeejmbf06ohtpq7m9xy; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY answer
    ADD CONSTRAINT fksmreumjeejmbf06ohtpq7m9xy FOREIGN KEY (author_id) REFERENCES author(id);


--
-- Name: comment_video fksx1006j6yf8s43s6ln6qgrvqh; Type: FK CONSTRAINT; Schema: public; Owner: diy_staging
--

ALTER TABLE ONLY comment_video
    ADD CONSTRAINT fksx1006j6yf8s43s6ln6qgrvqh FOREIGN KEY (video_id) REFERENCES video(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: homify_s
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

