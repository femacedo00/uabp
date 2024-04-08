--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    id integer NOT NULL,
    nome character varying(100) NOT NULL
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- Name: categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorias_id_seq OWNER TO postgres;

--
-- Name: categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_id_seq OWNED BY public.categorias.id;


--
-- Name: itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itens (
    upc_a bigint NOT NULL,
    nome character varying(100) NOT NULL,
    categoria integer,
    marca character varying(100),
    uni_grand character varying(50),
    num_grand double precision
);


ALTER TABLE public.itens OWNER TO postgres;

--
-- Name: mercado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mercado (
    cnpj bigint NOT NULL,
    itensmercado text,
    nome character varying(100) NOT NULL,
    rua character varying(100),
    cep character varying(20)
);


ALTER TABLE public.mercado OWNER TO postgres;

--
-- Name: preco_mercado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preco_mercado (
    id integer NOT NULL,
    item bigint,
    mercado bigint,
    preco double precision
);


ALTER TABLE public.preco_mercado OWNER TO postgres;

--
-- Name: preco_mercado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preco_mercado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preco_mercado_id_seq OWNER TO postgres;

--
-- Name: preco_mercado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preco_mercado_id_seq OWNED BY public.preco_mercado.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id bigint NOT NULL,
    login character varying(255),
    nome character varying(255),
    senha character varying(255)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id SET DEFAULT nextval('public.categorias_id_seq'::regclass);


--
-- Name: preco_mercado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preco_mercado ALTER COLUMN id SET DEFAULT nextval('public.preco_mercado_id_seq'::regclass);


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias (id, nome) FROM stdin;
1	Açougue
2	Frios e laticínios
3	Adega e bebidas
4	Higiene e limpeza
5	Hortifruti e mercearia
6	Padaria
7	Enlatados
8	Cereais
9	Rotisseria
\.


--
-- Data for Name: itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itens (upc_a, nome, categoria, marca, uni_grand, num_grand) FROM stdin;
12345678905	Carne bovina	1	Fictícia Carnes	kg	1
123456789012	Queijo muçarela	2	Queijos do Vale	g	500
234567890123	Vinho tinto	3	Vinícola do Sul	ml	750
345678901234	Sabonete líquido	4	Limpo e Perfumado	ml	250
456789012345	Maçã	5	Frutas Saborosas	kg	1
567890123456	Pão francês	6	Panificadora Pão Quente	unidade	1
678901234567	Sardinha em lata	7	Conservas Del Mar	unidade	1
789012345678	Arroz	8	Cereal do Campo	kg	1
890123456789	Frango assado	9	Frangos do Sítio	kg	1
901234567890	Leite integral	2	Laticínios Felizes	l	1
123123123123	Ovos	5	Granja do Sol	unidade	12
234234234234	Cerveja	3	Cervejaria da Amizade	ml	350
345345345345	Papel higiênico	4	Limpeza Total	rolo	4
456456456456	Macarrão	8	Massa Leve	g	500
567567567567	Desinfetante	4	Cheiro Bom	ml	750
678678678678	Banana	5	Frutaria Tropical	kg	1
789789789789	Pão de forma	6	Padaria São João	unidade	1
890890890890	Feijão	8	Feijão Bom	kg	1
901901901901	Café	5	Café da Manhã	g	500
112112112112	Tomate	5	Hortifruti Express	kg	1
223223223223	Refrigerante	3	Refrescante	l	2
334334334334	Biscoito recheado	8	Biscoitos Felizes	g	200
445445445445	Leite condensado	2	Doces Sonhos	ml	395
556556556556	Cereal matinal	8	Manhã Saudável	g	300
667667667667	Detergente	4	Limpinho e Cheiroso	ml	500
778778778778	Amaciante de roupas	4	Tecido Macio	ml	1500
889889889889	Atum em lata	7	Peixe do Mar	g	120
990990990990	Açúcar refinado	8	Doce Sabor	kg	1
111222333444	Salgadinho de milho	8	Snacks Crocantes	g	150
222333434555	Lombo suíno	1	Carnes Deliciosas	kg	1
333444525666	Iogurte natural	2	Iogurteria	g	150
444555626777	Cenoura	5	Legumes Frescos	kg	1
555666177888	Pão de queijo	6	Casa de Pães	unidade	10
666777818999	Milho em conserva	7	Conservas da Roça	g	200
777888999000	Biscoito de polvilho	8	Biscoitos da Vovó	g	250
888999000111	Salmão	1	Peixaria do Mar	kg	1
999000111222	Água mineral	3	Água Pura	l	1.5
111222333	Sabão em pó	4	Lavanderia Clean	kg	2
111222333424	Pêssego em calda	7	Doces do Sítio	g	400
222333444555	Peito de peru fatiado	2	Frios Delícia	g	200
333444555666	Vodka	3	Destilados do Leste	l	1
444555666777	Abacaxi	5	Frutas Tropicais	unidade	1
555666777888	Azeite de oliva	2	Oliveira Dourada	ml	500
666777888999	Filé de peixe	1	Peixaria Marítima	kg	1
112233445566	Creme de leite	2	Laticínios Felizes	ml	1000
778899001122	Vinagre de maçã	8	Vinagre Fino	ml	750
990011223344	Suco de laranja natural	5	Frutas Saborosas	ml	1500
334455667788	Manteiga	2	Manteiga do Campo	g	200
556677889900	Queijo cheddar	2	Queijos do Vale	g	250
778899101122	Geleia de morango	8	Doces da Vovó	g	400
\.


--
-- Data for Name: mercado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mercado (cnpj, itensmercado, nome, rua, cep) FROM stdin;
12345678901234	{"Itens": ["012345678905", "123456789012", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "123123123123", "345345345345", "556556556556", "778778778778", "990990990990", "222333434555", "333444525666", "666777818999", "777888999000", "888999000111", "999000111222"]}	Mercado do João	Rua das Flores, 123	12345-678
23456789012345	{"Itens": ["012345678905", "123456789012", "234567890123", "345678901234", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "123123123123", "234234234234", "334334334334", "445445445445", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888"]}	Supermercado da Maria	Avenida das Palmeiras, 456	54321-987
34567890123456	{"Itens": ["012345678905", "234567890123", "345678901234", "456789012345", "567890123456", "789012345678", "890123456789", "901234567890", "112112112112", "223223223223", "334334334334", "445445445445", "556556556556", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888", "666777888999", "777888999000", "888999000111", "999000111222"]}	Mercadinho da Ana	Rua das Oliveiras, 789	98765-432
45678901234567	{"Itens": ["123123123123", "234234234234", "345345345345", "456456456456", "567567567567", "678678678678", "789789789789", "890890890890", "901901901901", "112112112112", "223223223223", "334334334334", "445445445445", "556556556556", "667667667667", "778778778778", "889889889889", "990990990990", "111222333444", "222333444555", "333444555666", "444555666777", "555666777888", "666777888999", "777888999000", "888999000111", "999000111222"]}	Mini Mercado do José	Rua dos Passarinhos, 101	54321-678
56789012345678	{"Itens": ["112233445566", "334455667788", "556677889900", "778899001122", "990011223344"]}	Supermercado da Daise	Rua das Orquídeas, 789	98765-432
\.


--
-- Data for Name: preco_mercado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.preco_mercado (id, item, mercado, preco) FROM stdin;
1	12345678905	12345678901234	52
2	123456789012	12345678901234	14.27
3	456789012345	12345678901234	3.1
4	567890123456	12345678901234	1.22
5	789012345678	12345678901234	8.5
6	890123456789	12345678901234	6.8
7	901234567890	12345678901234	3.99
8	123123123123	12345678901234	24.99
9	345345345345	12345678901234	2.75
10	556556556556	12345678901234	5.45
11	778778778778	12345678901234	12.6
12	990990990990	12345678901234	1.8
13	222333434555	12345678901234	35.9
14	666777818999	12345678901234	4.7
15	777888999000	12345678901234	9.25
16	888999000111	12345678901234	42.75
17	999000111222	12345678901234	0.95
18	12345678905	23456789012345	51
19	123456789012	23456789012345	13.92
20	234567890123	23456789012345	6.25
21	345678901234	23456789012345	2.15
22	456789012345	23456789012345	3
23	567890123456	23456789012345	1.32
24	789012345678	23456789012345	9.75
25	890123456789	23456789012345	7.6
26	901234567890	23456789012345	4.2
27	123123123123	23456789012345	21.99
28	234234234234	23456789012345	8.5
29	334334334334	23456789012345	3.8
30	445445445445	23456789012345	4.5
31	667667667667	23456789012345	5.25
32	778778778778	23456789012345	12.8
33	889889889889	23456789012345	3.75
34	990990990990	23456789012345	1.9
35	111222333444	23456789012345	14.5
36	222333444555	23456789012345	28.75
37	333444555666	23456789012345	3.99
38	444555666777	23456789012345	9.8
39	555666777888	23456789012345	10.5
40	12345678905	34567890123456	49.5
41	234567890123	34567890123456	5.75
42	345678901234	34567890123456	1.99
43	456789012345	34567890123456	3.25
44	567890123456	34567890123456	1.55
45	789012345678	34567890123456	9.25
46	890123456789	34567890123456	7.1
47	901234567890	34567890123456	4.5
48	112112112112	34567890123456	14.25
49	223223223223	34567890123456	27.99
50	334334334334	34567890123456	3.75
51	445445445445	34567890123456	9.5
52	556556556556	34567890123456	10.25
53	667667667667	34567890123456	5.5
54	778778778778	34567890123456	12.5
55	889889889889	34567890123456	3.99
56	990990990990	34567890123456	1.75
57	111222333444	34567890123456	14.25
58	222333444555	34567890123456	27.99
59	333444555666	34567890123456	3.75
60	444555666777	34567890123456	9.5
61	555666777888	34567890123456	10.25
62	666777888999	34567890123456	9.75
63	777888999000	34567890123456	20.25
64	888999000111	34567890123456	40.25
65	999000111222	34567890123456	6.25
66	123123123123	45678901234567	18.75
67	234234234234	45678901234567	7.99
68	345345345345	45678901234567	2.5
69	456456456456	45678901234567	6.25
70	567567567567	45678901234567	3.55
71	678678678678	45678901234567	1.85
72	789789789789	45678901234567	12.5
73	890890890890	45678901234567	9.75
74	901901901901	45678901234567	5.99
75	112112112112	45678901234567	17.5
76	223223223223	45678901234567	28.99
77	334334334334	45678901234567	4.75
78	445445445445	45678901234567	9.99
79	556556556556	45678901234567	11.25
80	667667667667	45678901234567	6.5
81	778778778778	45678901234567	14.5
82	889889889889	45678901234567	4.99
83	990990990990	45678901234567	2.75
84	111222333444	45678901234567	15.25
85	222333444555	45678901234567	28.99
86	333444555666	45678901234567	4.75
87	444555666777	45678901234567	9.99
88	555666777888	45678901234567	11.25
89	666777888999	45678901234567	9.75
90	777888999000	45678901234567	20.25
91	888999000111	45678901234567	40.25
92	999000111222	45678901234567	6.25
93	112233445566	56789012345678	2.99
94	334455667788	56789012345678	5.25
95	556677889900	56789012345678	4.5
96	778899001122	56789012345678	6.75
97	990011223344	56789012345678	3.25
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, login, nome, senha) FROM stdin;
1	diogo.p.pereira@unesp.br	Diogo	jnhtry65g
2	fsa.oliveira@unesp.br	Felipe	123456
\.


--
-- Name: categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_seq', 9, true);


--
-- Name: preco_mercado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preco_mercado_id_seq', 97, true);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);


--
-- Name: itens itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT itens_pkey PRIMARY KEY (upc_a);


--
-- Name: mercado mercado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mercado
    ADD CONSTRAINT mercado_pkey PRIMARY KEY (cnpj);


--
-- Name: preco_mercado preco_mercado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preco_mercado
    ADD CONSTRAINT preco_mercado_pkey PRIMARY KEY (id);


--
-- Name: itens itens_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT itens_categoria_fkey FOREIGN KEY (categoria) REFERENCES public.categorias(id);


--
-- Name: preco_mercado preco_mercado_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preco_mercado
    ADD CONSTRAINT preco_mercado_item_fkey FOREIGN KEY (item) REFERENCES public.itens(upc_a);


--
-- Name: preco_mercado preco_mercado_mercado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preco_mercado
    ADD CONSTRAINT preco_mercado_mercado_fkey FOREIGN KEY (mercado) REFERENCES public.mercado(cnpj);


--
-- PostgreSQL database dump complete
--

