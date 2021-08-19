--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

-- Started on 2021-08-10 22:05:19

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 32951)
-- Name: Area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Area" (
    id_area integer NOT NULL,
    enunciado_area text NOT NULL,
    estado_area boolean NOT NULL,
    id_encuesta bigint NOT NULL
);


ALTER TABLE public."Area" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32949)
-- Name: Area_id_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Area_id_area_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Area_id_area_seq" OWNER TO postgres;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 217
-- Name: Area_id_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_id_area_seq" OWNED BY public."Area".id_area;


--
-- TOC entry 219 (class 1259 OID 32960)
-- Name: Area_id_encuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Area_id_encuesta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Area_id_encuesta_seq" OWNER TO postgres;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 219
-- Name: Area_id_encuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_id_encuesta_seq" OWNED BY public."Area".id_encuesta;


--
-- TOC entry 212 (class 1259 OID 32861)
-- Name: Encuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Encuesta" (
    id_encuesta integer NOT NULL,
    nombre_encuesta text NOT NULL,
    desc_encuesta text
);


ALTER TABLE public."Encuesta" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24667)
-- Name: Encuesta_contestada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Encuesta_contestada" (
    id_encuesta_contestada integer NOT NULL,
    id_usuario bigint NOT NULL,
    fecha_respuesta date NOT NULL,
    id_encuesta bigint NOT NULL,
    id_respuesta bigint NOT NULL
);


ALTER TABLE public."Encuesta_contestada" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33020)
-- Name: Encuesta_contestada_id_encuesta_contestada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Encuesta_contestada_id_encuesta_contestada_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Encuesta_contestada_id_encuesta_contestada_seq" OWNER TO postgres;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 222
-- Name: Encuesta_contestada_id_encuesta_contestada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Encuesta_contestada_id_encuesta_contestada_seq" OWNED BY public."Encuesta_contestada".id_encuesta_contestada;


--
-- TOC entry 211 (class 1259 OID 32859)
-- Name: Encuesta_id_encuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Encuesta_id_encuesta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Encuesta_id_encuesta_seq" OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 211
-- Name: Encuesta_id_encuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Encuesta_id_encuesta_seq" OWNED BY public."Encuesta".id_encuesta;


--
-- TOC entry 200 (class 1259 OID 24645)
-- Name: Opcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Opcion" (
    id_opcion integer NOT NULL,
    descripcion_opcion text NOT NULL,
    id_pregunta bigint NOT NULL
);


ALTER TABLE public."Opcion" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 24648)
-- Name: Opciones_id_Opciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Opciones_id_Opciones_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Opciones_id_Opciones_seq" OWNER TO postgres;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 201
-- Name: Opciones_id_Opciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Opciones_id_Opciones_seq" OWNED BY public."Opcion".id_opcion;


--
-- TOC entry 202 (class 1259 OID 24650)
-- Name: Persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Persona" (
    id_persona integer NOT NULL,
    identificacion_persona text NOT NULL,
    codigo_persona text NOT NULL,
    nombre_persona text NOT NULL,
    apellido_persona text NOT NULL,
    correo_persona text,
    telefono_persona text,
    direccion_persona text,
    id_usuario integer NOT NULL
);


ALTER TABLE public."Persona" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24656)
-- Name: Persona_id_Persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Persona_id_Persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Persona_id_Persona_seq" OWNER TO postgres;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 203
-- Name: Persona_id_Persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Persona_id_Persona_seq" OWNED BY public."Persona".id_persona;


--
-- TOC entry 204 (class 1259 OID 24658)
-- Name: Persona_id_Usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Persona_id_Usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Persona_id_Usuario_seq" OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 204
-- Name: Persona_id_Usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Persona_id_Usuario_seq" OWNED BY public."Persona".id_usuario;


--
-- TOC entry 214 (class 1259 OID 32880)
-- Name: Pregunta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pregunta" (
    id_pregunta integer NOT NULL,
    enunciado_pregunta text NOT NULL,
    estado_pregunta boolean NOT NULL,
    id_tipo_pregunta bigint NOT NULL,
    id_area bigint NOT NULL
);


ALTER TABLE public."Pregunta" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 32876)
-- Name: Preguntas_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Preguntas_id_pregunta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Preguntas_id_pregunta_seq" OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 213
-- Name: Preguntas_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Preguntas_id_pregunta_seq" OWNED BY public."Pregunta".id_pregunta;


--
-- TOC entry 216 (class 1259 OID 32899)
-- Name: Respuesta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Respuesta" (
    id_respuesta integer NOT NULL,
    respuesta text NOT NULL,
    id_pregunta bigint
);


ALTER TABLE public."Respuesta" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32895)
-- Name: Respuestas_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Respuestas_id_respuesta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Respuestas_id_respuesta_seq" OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 215
-- Name: Respuestas_id_respuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Respuestas_id_respuesta_seq" OWNED BY public."Respuesta".id_respuesta;


--
-- TOC entry 206 (class 1259 OID 24679)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol" (
    id_rol text NOT NULL,
    nombre_rol text NOT NULL
);


ALTER TABLE public."Rol" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24685)
-- Name: Rol_persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol_persona" (
    id_rol text NOT NULL,
    id_persona integer NOT NULL,
    estado_rol boolean NOT NULL
);


ALTER TABLE public."Rol_persona" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24691)
-- Name: Roles_id_Persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Roles_id_Persona_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Roles_id_Persona_seq" OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 208
-- Name: Roles_id_Persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Roles_id_Persona_seq" OWNED BY public."Rol_persona".id_persona;


--
-- TOC entry 221 (class 1259 OID 32986)
-- Name: Tipo_pregunta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tipo_pregunta" (
    id_tipo_pregunta integer NOT NULL,
    tipo text NOT NULL
);


ALTER TABLE public."Tipo_pregunta" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32984)
-- Name: Tipo_pregunta_id_tipo_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tipo_pregunta_id_tipo_pregunta_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tipo_pregunta_id_tipo_pregunta_seq" OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 220
-- Name: Tipo_pregunta_id_tipo_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tipo_pregunta_id_tipo_pregunta_seq" OWNED BY public."Tipo_pregunta".id_tipo_pregunta;


--
-- TOC entry 209 (class 1259 OID 24712)
-- Name: Usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario" (
    id_usuario integer NOT NULL,
    nombre_usuario text NOT NULL,
    "contraseña_usuario" text NOT NULL
);


ALTER TABLE public."Usuario" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24718)
-- Name: Usuarios_id_Usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuarios_id_Usuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Usuarios_id_Usuario_seq" OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 210
-- Name: Usuarios_id_Usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuarios_id_Usuario_seq" OWNED BY public."Usuario".id_usuario;


--
-- TOC entry 2931 (class 2604 OID 32954)
-- Name: Area id_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area" ALTER COLUMN id_area SET DEFAULT nextval('public."Area_id_area_seq"'::regclass);


--
-- TOC entry 2932 (class 2604 OID 32971)
-- Name: Area id_encuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area" ALTER COLUMN id_encuesta SET DEFAULT nextval('public."Area_id_encuesta_seq"'::regclass);


--
-- TOC entry 2928 (class 2604 OID 32864)
-- Name: Encuesta id_encuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta" ALTER COLUMN id_encuesta SET DEFAULT nextval('public."Encuesta_id_encuesta_seq"'::regclass);


--
-- TOC entry 2925 (class 2604 OID 33022)
-- Name: Encuesta_contestada id_encuesta_contestada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta_contestada" ALTER COLUMN id_encuesta_contestada SET DEFAULT nextval('public."Encuesta_contestada_id_encuesta_contestada_seq"'::regclass);


--
-- TOC entry 2922 (class 2604 OID 24728)
-- Name: Opcion id_opcion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Opcion" ALTER COLUMN id_opcion SET DEFAULT nextval('public."Opciones_id_Opciones_seq"'::regclass);


--
-- TOC entry 2923 (class 2604 OID 24729)
-- Name: Persona id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona" ALTER COLUMN id_persona SET DEFAULT nextval('public."Persona_id_Persona_seq"'::regclass);


--
-- TOC entry 2924 (class 2604 OID 24730)
-- Name: Persona id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Persona_id_Usuario_seq"'::regclass);


--
-- TOC entry 2929 (class 2604 OID 32883)
-- Name: Pregunta id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta" ALTER COLUMN id_pregunta SET DEFAULT nextval('public."Preguntas_id_pregunta_seq"'::regclass);


--
-- TOC entry 2930 (class 2604 OID 32902)
-- Name: Respuesta id_respuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Respuesta" ALTER COLUMN id_respuesta SET DEFAULT nextval('public."Respuestas_id_respuesta_seq"'::regclass);


--
-- TOC entry 2926 (class 2604 OID 24736)
-- Name: Rol_persona id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_persona" ALTER COLUMN id_persona SET DEFAULT nextval('public."Roles_id_Persona_seq"'::regclass);


--
-- TOC entry 2933 (class 2604 OID 32989)
-- Name: Tipo_pregunta id_tipo_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tipo_pregunta" ALTER COLUMN id_tipo_pregunta SET DEFAULT nextval('public."Tipo_pregunta_id_tipo_pregunta_seq"'::regclass);


--
-- TOC entry 2927 (class 2604 OID 24742)
-- Name: Usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario" ALTER COLUMN id_usuario SET DEFAULT nextval('public."Usuarios_id_Usuario_seq"'::regclass);


--
-- TOC entry 3113 (class 0 OID 32951)
-- Dependencies: 218
-- Data for Name: Area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area" (id_area, enunciado_area, estado_area, id_encuesta) FROM stdin;
\.


--
-- TOC entry 3107 (class 0 OID 32861)
-- Dependencies: 212
-- Data for Name: Encuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Encuesta" (id_encuesta, nombre_encuesta, desc_encuesta) FROM stdin;
1	prueba1	probando desde postman1
2	prueba web	funciona
3	PRUEBA 3 AM	probando
\.


--
-- TOC entry 3100 (class 0 OID 24667)
-- Dependencies: 205
-- Data for Name: Encuesta_contestada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Encuesta_contestada" (id_encuesta_contestada, id_usuario, fecha_respuesta, id_encuesta, id_respuesta) FROM stdin;
\.


--
-- TOC entry 3095 (class 0 OID 24645)
-- Dependencies: 200
-- Data for Name: Opcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Opcion" (id_opcion, descripcion_opcion, id_pregunta) FROM stdin;
\.


--
-- TOC entry 3097 (class 0 OID 24650)
-- Dependencies: 202
-- Data for Name: Persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Persona" (id_persona, identificacion_persona, codigo_persona, nombre_persona, apellido_persona, correo_persona, telefono_persona, direccion_persona, id_usuario) FROM stdin;
1	1086105953	215036007	LORENA	BRAVO	elizabeth@udenar.edu.co	3164134350	Pupiales	1
2	1085940276	215036014	JHONATAN	CHACUA	jhonatanscs95@hotmail.com	3188413711	Ipiales	2
\.


--
-- TOC entry 3109 (class 0 OID 32880)
-- Dependencies: 214
-- Data for Name: Pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pregunta" (id_pregunta, enunciado_pregunta, estado_pregunta, id_tipo_pregunta, id_area) FROM stdin;
\.


--
-- TOC entry 3111 (class 0 OID 32899)
-- Dependencies: 216
-- Data for Name: Respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Respuesta" (id_respuesta, respuesta, id_pregunta) FROM stdin;
\.


--
-- TOC entry 3101 (class 0 OID 24679)
-- Dependencies: 206
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rol" (id_rol, nombre_rol) FROM stdin;
R1	ADMINISTRADOR
R2	ASESOR
R3	ESTUDIANTE CON TRABAJO DE GRADO
R4	ESTUDIANTE SIN TRABAJO DE GRADO
\.


--
-- TOC entry 3102 (class 0 OID 24685)
-- Dependencies: 207
-- Data for Name: Rol_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rol_persona" (id_rol, id_persona, estado_rol) FROM stdin;
R1	1	t
R3	2	t
\.


--
-- TOC entry 3116 (class 0 OID 32986)
-- Dependencies: 221
-- Data for Name: Tipo_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tipo_pregunta" (id_tipo_pregunta, tipo) FROM stdin;
\.


--
-- TOC entry 3104 (class 0 OID 24712)
-- Dependencies: 209
-- Data for Name: Usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario" (id_usuario, nombre_usuario, "contraseña_usuario") FROM stdin;
1	lorraine18	123456
2	JHONSTE	1234
\.


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 217
-- Name: Area_id_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_id_area_seq"', 1, false);


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 219
-- Name: Area_id_encuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_id_encuesta_seq"', 1, false);


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 222
-- Name: Encuesta_contestada_id_encuesta_contestada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Encuesta_contestada_id_encuesta_contestada_seq"', 1, false);


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 211
-- Name: Encuesta_id_encuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Encuesta_id_encuesta_seq"', 3, true);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 201
-- Name: Opciones_id_Opciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Opciones_id_Opciones_seq"', 1, false);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 203
-- Name: Persona_id_Persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Persona_id_Persona_seq"', 2, true);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 204
-- Name: Persona_id_Usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Persona_id_Usuario_seq"', 1, false);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 213
-- Name: Preguntas_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Preguntas_id_pregunta_seq"', 3, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 215
-- Name: Respuestas_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Respuestas_id_respuesta_seq"', 6, true);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 208
-- Name: Roles_id_Persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Roles_id_Persona_seq"', 1, false);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 220
-- Name: Tipo_pregunta_id_tipo_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tipo_pregunta_id_tipo_pregunta_seq"', 1, false);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 210
-- Name: Usuarios_id_Usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuarios_id_Usuario_seq"', 1, true);


--
-- TOC entry 2953 (class 2606 OID 32959)
-- Name: Area Area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area"
    ADD CONSTRAINT "Area_pkey" PRIMARY KEY (id_area);


--
-- TOC entry 2939 (class 2606 OID 33027)
-- Name: Encuesta_contestada Encuesta_contestada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta_contestada"
    ADD CONSTRAINT "Encuesta_contestada_pkey" PRIMARY KEY (id_encuesta_contestada);


--
-- TOC entry 2935 (class 2606 OID 24758)
-- Name: Opcion Opciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Opcion"
    ADD CONSTRAINT "Opciones_pkey" PRIMARY KEY (id_opcion);


--
-- TOC entry 2937 (class 2606 OID 24760)
-- Name: Persona Persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT "Persona_pkey" PRIMARY KEY (id_persona);


--
-- TOC entry 2943 (class 2606 OID 41142)
-- Name: Rol_persona Rol_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_persona"
    ADD CONSTRAINT "Rol_persona_pkey" PRIMARY KEY (id_rol);


--
-- TOC entry 2941 (class 2606 OID 24766)
-- Name: Rol Rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT "Rol_pkey" PRIMARY KEY (id_rol);


--
-- TOC entry 2955 (class 2606 OID 32994)
-- Name: Tipo_pregunta Tipo_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tipo_pregunta"
    ADD CONSTRAINT "Tipo_pregunta_pkey" PRIMARY KEY (id_tipo_pregunta);


--
-- TOC entry 2945 (class 2606 OID 24772)
-- Name: Usuario Usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id_usuario);


--
-- TOC entry 2947 (class 2606 OID 32869)
-- Name: Encuesta pk_encuesta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta"
    ADD CONSTRAINT pk_encuesta PRIMARY KEY (id_encuesta);


--
-- TOC entry 2949 (class 2606 OID 32889)
-- Name: Pregunta pk_preguntas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta"
    ADD CONSTRAINT pk_preguntas PRIMARY KEY (id_pregunta);


--
-- TOC entry 2951 (class 2606 OID 32908)
-- Name: Respuesta pk_respuestas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Respuesta"
    ADD CONSTRAINT pk_respuestas PRIMARY KEY (id_respuesta);


--
-- TOC entry 2958 (class 2606 OID 33028)
-- Name: Encuesta_contestada contestada_encuesta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta_contestada"
    ADD CONSTRAINT contestada_encuesta FOREIGN KEY (id_encuesta) REFERENCES public."Encuesta"(id_encuesta) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2959 (class 2606 OID 33033)
-- Name: Encuesta_contestada contestada_respuesta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Encuesta_contestada"
    ADD CONSTRAINT contestada_respuesta FOREIGN KEY (id_respuesta) REFERENCES public."Respuesta"(id_respuesta) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2960 (class 2606 OID 24813)
-- Name: Rol_persona fk_Persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_persona"
    ADD CONSTRAINT "fk_Persona" FOREIGN KEY (id_persona) REFERENCES public."Persona"(id_persona) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2961 (class 2606 OID 24838)
-- Name: Rol_persona fk_Rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_persona"
    ADD CONSTRAINT "fk_Rol" FOREIGN KEY (id_rol) REFERENCES public."Rol"(id_rol) NOT VALID;


--
-- TOC entry 2957 (class 2606 OID 24868)
-- Name: Persona fk_Usuario_Persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Persona"
    ADD CONSTRAINT "fk_Usuario_Persona" FOREIGN KEY (id_usuario) REFERENCES public."Usuario"(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2964 (class 2606 OID 32979)
-- Name: Area fk_encuesta_Area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area"
    ADD CONSTRAINT "fk_encuesta_Area" FOREIGN KEY (id_encuesta) REFERENCES public."Encuesta"(id_encuesta) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2956 (class 2606 OID 33015)
-- Name: Opcion opcion_pregunta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Opcion"
    ADD CONSTRAINT opcion_pregunta FOREIGN KEY (id_pregunta) REFERENCES public."Pregunta"(id_pregunta) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2962 (class 2606 OID 32995)
-- Name: Pregunta pregunta_area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta"
    ADD CONSTRAINT pregunta_area FOREIGN KEY (id_area) REFERENCES public."Area"(id_area) ON UPDATE RESTRICT ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2963 (class 2606 OID 33000)
-- Name: Pregunta pregunta_tipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pregunta"
    ADD CONSTRAINT pregunta_tipo FOREIGN KEY (id_tipo_pregunta) REFERENCES public."Tipo_pregunta"(id_tipo_pregunta) NOT VALID;


-- Completed on 2021-08-10 22:05:21

--
-- PostgreSQL database dump complete
--

