--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_id_seq OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    bank integer,
    review text NOT NULL,
    rating integer,
    sentiment_label character varying(10),
    sentiment_score double precision,
    theme character varying(100),
    date date
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: banks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (id, name) FROM stdin;
1	Bank of Abyssinia
2	Commercial Bank of Ethiopia
3	Dashen Bank
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, bank, review, rating, sentiment_label, sentiment_score, theme, date) FROM stdin;
1	1	Harun Tamam Galanaa (Harun tamam galanaa)	3	negative	0.978377878665924	Transaction Performance	2024-08-09
2	1	None (👎👎👎👎👎👎👎👎👎)	1	negative	0.99668151140213	Transaction Performance	2024-08-06
3	1	By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?	1	negative	0.9992759823799132	Transaction Performance	2025-01-02
4	1	The app is constantly crashing and freezing when to send to BOA customers' accounts.	1	negative	0.9988401532173156	Transaction Performance	2024-07-15
5	1	what awesome apps. it is very simple to use and more much important apps.	5	positive	0.9998214840888976	User Interface & Experience	2025-03-09
6	1	Best	2	positive	0.9997941851615906	Transaction Performance	2025-04-19
7	1	Has some nice interface but always freezes or slow to load .App developers please fix this issue.	3	negative	0.993607759475708	Transaction Performance	2024-10-27
8	1	Very poor proformance	1	negative	0.9998043179512024	Transaction Performance	2025-03-01
9	1	Unreliable, expensive service. Most of the time, it is not working. Sometimes, it will take more than a day to complete transactions and charges more for this unworthy service. I will not recommend this bank app to anyone.	1	negative	0.9994435906410216	Transaction Performance	2024-06-10
10	1	It doesn't work	1	negative	0.9997813105583192	Transaction Performance	2024-07-12
11	1	great BoA	5	positive	0.9992689490318298	Transaction Performance	2025-03-22
12	1	It's better to say I don't use boa rather than pulling your phone out and opening this app	1	negative	0.9981752634048462	Transaction Performance	2024-12-01
13	1	Good but Very slow.	1	positive	0.9877548813819884	Account Access Issues	2024-07-08
14	1	The worst app	1	negative	0.9997969269752502	User Interface & Experience	2024-07-28
15	1	Excellent service (Excellent service)	5	positive	0.9998505115509032	Transaction Performance	2024-06-19
16	1	The worst mob app i have ever seen. Slow, uncomfortable and stupid. It is better to learn from the best app (tele birr). The released updates is even worst.	1	negative	0.9997610449790956	User Interface & Experience	2024-06-11
17	1	AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages	1	negative	0.9959415793418884	Transaction Performance	2025-03-04
18	1	Smart technology	5	positive	0.9998468160629272	Transaction Performance	2024-09-10
19	1	Poor network (Poor network)	1	negative	0.999745547771454	Transaction Performance	2024-08-01
20	1	I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately	1	negative	0.9916398525238036	User Interface & Experience	2025-03-03
21	1	Your app doesn't match your bank, the app is disaster, super slow. Please learn something from tele birr app.	1	negative	0.9994460940361024	User Interface & Experience	2024-11-19
22	1	the app crush frequently	1	negative	0.998525083065033	User Interface & Experience	2025-05-24
23	1	Make it easy and convienient to use and perfect for all to high prefrence and choice.	3	positive	0.9997236132621764	Feature Requests	2025-02-07
24	1	Good 👍 (Good 👍)	5	positive	0.9998077750205994	Account Access Issues	2025-01-31
25	1	I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia's services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!	1	negative	0.9978498220443726	User Interface & Experience	2025-01-03
26	1	The previous version is better it doesn't work	1	negative	0.9997755885124208	Transaction Performance	2024-08-04
27	1	i can't use this app why?	5	negative	0.9993101358413696	Feature Requests	2025-03-07
28	1	Not working on this days	1	negative	0.9972773194313048	Transaction Performance	2025-02-26
29	1	Just make it work please🤣 this is embarrassing for a bank of your size	1	negative	0.999284327030182	Transaction Performance	2024-10-04
30	1	like	5	positive	0.9910564422607422	Transaction Performance	2025-04-06
31	1	Money	5	positive	0.9659326076507568	Transaction Performance	2024-11-24
32	1	Please fix the app i doesn't belongs to Abbssinya Bank Name	1	negative	0.9982648491859436	User Interface & Experience	2024-05-22
33	1	Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they're too much better!!!! It clashes it takes much longer time to login while loading in short it's a complete of trash	1	negative	0.9997013211250304	User Interface & Experience	2025-03-06
34	1	I have experiance	5	negative	0.8070294857025146	Transaction Performance	2024-07-19
35	1	Easy and sooo simple to use it, also its easy to stole someones money using the app	3	negative	0.9888866543769836	Feature Requests	2024-12-16
36	1	not active	1	negative	0.999765932559967	Transaction Performance	2024-07-27
37	1	It is Good to save time 👌👌	3	positive	0.9998168349266052	Transaction Performance	2024-05-31
38	1	Good app	5	positive	0.9998493194580078	Account Access Issues	2025-03-03
39	1	Work on (Workneh girmamo)	5	negative	0.7175692915916443	Transaction Performance	2024-07-05
40	1	Describe your experience (optional) (የእርስዎን ተሞክሮ ይግለጹ (አማራጭ))	5	negative	0.6901815533638	Transaction Performance	2024-09-14
41	1	It's not working. It needs a big update. Can't you update the app quickly?	1	negative	0.999777853488922	Transaction Performance	2024-09-14
42	1	It's good when i've downloaded at first. But now it doesn't work well	2	negative	0.994461953639984	Transaction Performance	2024-05-20
43	1	Great 👍 (Great 👍)	5	positive	0.9988258481025696	Transaction Performance	2025-01-04
44	1	It's very cold apple. He never worked. Why don't you make a very much problem with the Abisinia Bank, do you not make the application again? (በጣም ቀፋፊ አፕ ነው ። ሰርቶ አያውቅም ። በጣም ብዙ ችግር አለበት ከአቢሲኒያ ባንክ የማይጠበቅ አፕ ለምን ደህና ዲቨሎኘር ቀጥራችሁ አፕሊኬሽኑን ድጋሚ አታሰሩትም ?)	1	negative	0.9992727637290956	Transaction Performance	2024-05-20
45	1	Great app with great services	5	positive	0.9998226761817932	Transaction Performance	2024-09-19
46	1	Too late! (Too late!)	1	negative	0.9993500113487244	Transaction Performance	2024-07-10
90	1	liking this application good 👍	5	positive	0.9996829032897948	Account Access Issues	2025-05-07
91	1	excellent app (excellent app)	4	positive	0.9997753500938416	User Interface & Experience	2025-05-16
47	1	The very interesting zero that I'm very downloading zero that I'm so downloaded zero is the Apps Vear Slee Ehhhh. WHY Don't You UPGRADE The APP ???? IT'S ALWAYS ZERO (በጣም የሚያስጠላ አፕ በጣም የወረደ ዜሮ ነው የምሰጠው ዘሮ It's not App it's very slow ehhhh. Why don't you upgrade the app???? It's always zero)	1	negative	0.9984090924263	User Interface & Experience	2025-01-18
48	1	Playstore need to have some option to give 0 stars because this application right here, deserve exactly that, imagine being one of the biggest banks In the country and can't manage to have good mobile application in the Era of mobile money, you guys are in the brink of collapse you better make it right real quick or you gonna be 10 meters down to the grave. DON'T USE THIS APP, IT'S WASTE OF TIME.	1	negative	0.9993355870246888	Transaction Performance	2024-05-21
49	1	It has good features but sometimes it doesn't work...0	1	negative	0.9956711530685424	Account Access Issues	2025-03-02
50	1	No open (አይከፍትም እኮ)	1	negative	0.9984502792358398	Transaction Performance	2025-04-17
51	1	Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.	1	negative	0.7652353644371033	Transaction Performance	2024-12-27
52	1	It usually crashes and unable to process also it request to off the developer options	1	negative	0.9996892213821412	Transaction Performance	2024-07-05
53	1	Despite the enhanced technology you have, the application doesn't work properly, and it asks for the developer option to be turned off, fix that.	3	negative	0.9997915625572203	Transaction Performance	2024-08-12
54	1	Gooood app my dear (Gooood app my dear)	5	negative	0.534153938293457	User Interface & Experience	2024-08-10
55	1	You guys keeps getting worst (You guys keeps getting worst)	1	negative	0.9996764659881592	Transaction Performance	2025-05-22
56	1	Always error occured. The worst app ever	1	negative	0.9997997879981996	User Interface & Experience	2024-06-20
57	1	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	negative	0.9997984766960144	User Interface & Experience	2025-05-18
58	1	Good job (Good job)	5	positive	0.9998433589935304	Account Access Issues	2024-08-07
59	1	The dirtiest application ever seen...	1	negative	0.995487630367279	Transaction Performance	2024-12-20
60	1	it's not working	3	negative	0.9997857213020324	Transaction Performance	2025-06-05
61	1	My filling (ሞላዬ ከበደ)	5	positive	0.9950482249259948	Transaction Performance	2025-05-14
62	1	A total disaster of an app. Always offline, never works, it's embarassing. I've lost hope and taken my business to a competitor	1	negative	0.9998038411140442	Transaction Performance	2024-08-08
63	1	It is not fast	3	negative	0.99720698595047	Feature Requests	2024-07-11
64	1	best	5	positive	0.9997941851615906	Transaction Performance	2025-03-21
65	1	This app is not available on all android versions and some times it is not functional.	1	negative	0.9997187256813048	Transaction Performance	2024-11-08
66	1	Sorry to say this compared to other banks mobile app its the worest it need more improvement the app doesn't match the bank standard it need more update its too slow plus it keep saying stop developing option on your phone when no developing setting enabled ??plus when it come to recent transaction nothing to display...	1	negative	0.9994317889213562	Transaction Performance	2024-05-24
67	1	Review	5	positive	0.9946893453598022	Transaction Performance	2024-08-06
68	1	Shameful	1	negative	0.998016357421875	Transaction Performance	2024-09-17
69	1	Very poor app b/c highly slow to open the app	1	negative	0.9998080134391784	User Interface & Experience	2024-08-12
70	1	The app is essentially unusable, it asks to disable developer mode even when it is already disabled and crashes, sometimes it only works with wifi and sometimes only with data, or it crashes just because.......	1	negative	0.9995259046554564	Transaction Performance	2024-07-04
71	1	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	negative	0.9989790916442872	Transaction Performance	2025-05-06
72	1	Very poor app. Its Always cresh and not compatible	2	negative	0.999818742275238	User Interface & Experience	2024-07-13
73	1	What's up I can't log in, what's wrong	5	negative	0.9989662170410156	Transaction Performance	2024-10-22
74	1	Mostly not working 😑	1	negative	0.999582588672638	Transaction Performance	2024-08-14
75	1	after i typed in my password it says successfully logged out ...and goes back to the first page	2	negative	0.5856841206550598	Transaction Performance	2025-04-04
76	1	it good	5	positive	0.9998427629470824	Account Access Issues	2024-11-12
77	1	You are beutiful	5	negative	0.8399413228034973	Transaction Performance	2024-06-09
78	1	Great For Financial company (Great For Financial company)	5	positive	0.9997618794441224	Transaction Performance	2024-09-30
79	1	It is not work for my device	5	negative	0.9997636675834656	Transaction Performance	2024-08-27
80	1	Gamebela (Gamebela)	1	negative	0.9261389374732972	Transaction Performance	2024-08-08
81	1	Blessed (ርይርፍ)	3	positive	0.9996781349182128	Transaction Performance	2024-07-19
82	1	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	negative	0.9994921684265136	Transaction Performance	2025-05-10
83	1	it doesn't work period z slowest mobile banking ever i would rather use *815#	1	negative	0.9990907907485962	Transaction Performance	2025-04-01
84	1	What is the purpose or point of not allowing to take a screenshot of the recipe after transferring???	1	negative	0.9991626739501952	Transaction Performance	2024-05-29
85	1	It's just terrible. It kept crashing in middle of transaction. Hell sometimes it won't open. My phone is stock Android (pixel 8) and I don't even know how this happens. Fix it!	1	negative	0.9996610879898072	Transaction Performance	2024-05-20
86	1	All	5	positive	0.9902591705322266	Transaction Performance	2024-05-21
87	1	After update it doesn't work well	2	negative	0.9996452331542968	Transaction Performance	2024-07-09
88	1	i have went to the bank so many times because i couldn't make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can't make any transaction with it please work in that	1	negative	0.9988333582878112	Transaction Performance	2025-03-21
89	1	Worst banking app ever (Worst banking app ever)	1	negative	0.9997918009757996	User Interface & Experience	2024-05-28
92	1	Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can't transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!	3	negative	0.99748432636261	Transaction Performance	2025-03-11
93	1	I need a support the app is not working	5	negative	0.9998034834861756	Transaction Performance	2024-11-12
94	1	This is not an appropriate app, i don't know how boa develops this app, i don't expect this much crazy and un confortable app form BOA, I'm soory!!!	1	negative	0.9996864795684814	User Interface & Experience	2024-09-07
95	1	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	negative	0.999669909477234	Transaction Performance	2025-04-19
96	1	best banking app in the wworld	5	positive	0.999572217464447	Account Access Issues	2025-02-22
97	1	None (👍👍👍)	5	negative	0.99668151140213	Transaction Performance	2024-06-12
98	1	I can't believe that Abyssinia develop this kind of trash app it have a lot of issues 👎👎👎	1	negative	0.998315453529358	Transaction Performance	2024-07-13
99	1	Wet (Wweeeer)	4	negative	0.9849342107772828	Transaction Performance	2024-11-12
100	1	I used to use it first but now I am not working for me why? (Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?)	5	negative	0.9993740916252136	Feature Requests	2024-08-11
101	1	Sad experience	1	negative	0.999068796634674	Transaction Performance	2025-01-30
102	1	I am Aimohon Joel , It's can be Good for a Better Conversation in Time 🙂	3	negative	0.9925204515457152	Account Access Issues	2024-09-14
103	1	Nise mobile bankig	4	negative	0.9858755469322203	Transaction Performance	2024-10-05
104	1	Riddled with crashes, cant use it anymore. Very frustrating!	1	negative	0.9994331002235411	Feature Requests	2024-06-20
105	1	Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it	1	negative	0.9997162222862244	User Interface & Experience	2024-07-25
106	1	A Star himself was devastated. i Dont Recemend to Use thries APP AlSO The Bank (አንድ star ራሱ ይበዛበታል። i dont recomend to use this app also the bank)	1	negative	0.9987263083457948	Feature Requests	2024-11-12
107	1	Horrible customer service and app crashes Horrible!!	1	negative	0.9997913241386414	Transaction Performance	2025-01-15
108	1	None (🤷🤷🤷)	3	negative	0.99668151140213	Transaction Performance	2024-07-15
109	1	This App is not interest for Android phone Please update it .	1	negative	0.9971383810043336	User Interface & Experience	2025-06-01
110	1	thank you	5	positive	0.9998352527618408	Transaction Performance	2025-04-02
111	1	The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.	1	negative	0.999749720096588	Transaction Performance	2024-11-26
112	1	It's not working totally, what a useless app is it,	1	negative	0.999817192554474	User Interface & Experience	2024-07-31
113	1	It's not convenient	1	negative	0.9998067021369934	Transaction Performance	2024-06-17
114	1	Bad app📱👎👎👎 (Bad app📱👎👎👎)	1	negative	0.999717891216278	User Interface & Experience	2024-08-11
115	1	amazing (amazing)	5	positive	0.9998841285705566	Transaction Performance	2025-05-18
116	1	I'm disappointed with the recent changes to this app. Disabling developer options for functionality seems unnecessary. The previous version offered a more user-friendly experience.	1	negative	0.9997298121452332	Transaction Performance	2024-06-06
117	1	Good	5	positive	0.999816119670868	Account Access Issues	2024-12-30
118	1	I like the the bank of Abyssinia is the best first bank of Ethiopia	1	positive	0.999809205532074	Transaction Performance	2024-06-11
119	1	BoA Mobile good bank (BoA Mobile good bank)	5	positive	0.9567445516586304	Transaction Performance	2025-06-02
120	1	excellent (excellent)	5	positive	0.99985933303833	Transaction Performance	2025-05-15
121	1	Yegema App Tish🪨 (Yegema app tish🪨)	1	negative	0.9846606850624084	User Interface & Experience	2024-09-08
122	1	wonderful (wonderful)	5	positive	0.9998780488967896	Transaction Performance	2025-03-19
123	1	That's too good application but try to add more alternatives and futures or possibilitys for your customers	3	negative	0.9941336512565612	Transaction Performance	2024-09-25
124	1	Poorly functioning app	3	negative	0.999775230884552	User Interface & Experience	2024-12-13
125	1	Wow	1	positive	0.999592125415802	Transaction Performance	2025-03-14
126	1	Perfect	5	positive	0.9998517036437988	Transaction Performance	2025-01-09
127	1	Nays	5	negative	0.9894010424613952	Transaction Performance	2024-07-28
128	1	Wwwerrr	5	negative	0.8502517342567444	Transaction Performance	2024-10-02
129	1	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	negative	0.9997255206108092	Transaction Performance	2025-04-20
130	1	exellent digital transaction of money	5	negative	0.994447946548462	Transaction Performance	2024-11-27
131	1	Fine	5	positive	0.9998335838317872	Transaction Performance	2024-12-21
132	1	wow	5	positive	0.999592125415802	Transaction Performance	2025-04-28
133	1	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	negative	0.99980491399765	Transaction Performance	2025-05-27
134	1	excellent service (excellent service)	5	positive	0.9998505115509032	Transaction Performance	2024-06-10
135	1	Like to much	5	positive	0.9997984766960144	Transaction Performance	2025-01-11
136	1	I bought a mobile card on this app but I didn't receive it and it took my money and I didn't get my money back.	1	negative	0.9994741082191468	Transaction Performance	2024-09-21
137	1	ok yes	5	positive	0.9997628331184388	Transaction Performance	2024-06-04
138	1	It doesn't work at all.	2	negative	0.9997771382331848	Transaction Performance	2025-01-02
139	1	Fast and suitable for the customers.	5	positive	0.9997920393943788	Feature Requests	2025-01-04
140	1	Very good	5	positive	0.9998520612716676	Account Access Issues	2024-11-14
141	1	Kerfafa new (Kerfafa new)	1	negative	0.9086884260177612	Transaction Performance	2024-06-01
142	1	Ahmed Mohammed the house (Ahmed Mohammed husen)	3	positive	0.9670978784561156	Transaction Performance	2024-07-21
143	1	Excellent (Excellent)	5	positive	0.99985933303833	Transaction Performance	2024-07-16
144	1	Great	5	positive	0.9998630285263062	Transaction Performance	2024-11-25
233	1	Infinx	5	negative	0.904255986213684	Transaction Performance	2024-11-12
145	1	Is it necessary to switch off developer options every time to use mobile banking?🤔🤔😡😡😡	1	negative	0.99793541431427	Transaction Performance	2024-08-04
146	1	The practice is good in everything, but Network is very difficult (አኘልኬሽኑ በሁሉም ነገር ጥሩ ነዉ,ነገር ግን Network በጣም ነዉ እሚያስቸገረው)	2	negative	0.9777442812919616	Transaction Performance	2024-06-13
147	1	Very nice	5	positive	0.9998563528060912	Customer Support	2024-12-13
148	1	screenshot isn't working, Please modify it	2	negative	0.9996084570884703	Transaction Performance	2024-07-22
149	1	It has become the most unreliable mibile banking app ever.	1	negative	0.999081015586853	User Interface & Experience	2024-06-16
150	1	Verry nice	5	positive	0.9997273087501526	Customer Support	2024-06-17
151	1	Fast transfer	5	positive	0.9989985823631288	Feature Requests	2024-10-24
152	1	Thank you	5	positive	0.9998352527618408	Transaction Performance	2025-01-10
153	1	The App's crash always.. Error.....	3	negative	0.9996880292892456	User Interface & Experience	2024-09-27
154	1	I’m giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst I’ve used. I hope improvements are made to enhance the user experience.	1	negative	0.9997000694274902	User Interface & Experience	2024-12-07
155	1	Is it even working these days? Please check it.	1	positive	0.989270567893982	Transaction Performance	2024-07-04
156	1	This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don't see the point.	1	negative	0.99979966878891	Transaction Performance	2024-11-28
157	1	i find it interesting specially in reciept downloading	1	positive	0.9981314539909364	Transaction Performance	2024-11-12
158	1	I'm Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it's anoying	1	negative	0.9990233182907104	Transaction Performance	2024-08-26
159	1	Thank you BoA	5	positive	0.9998399019241332	Transaction Performance	2025-02-23
160	1	its best app but its don't working in poor connection area so	5	negative	0.9705930948257446	Transaction Performance	2024-07-03
161	1	The worst App i have never seen like this before	1	negative	0.999774158000946	User Interface & Experience	2024-11-12
162	1	bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!	1	negative	0.9998133778572084	User Interface & Experience	2025-03-05
163	1	How to download or screenshot of payment receipt...what kinda worst app ever 🤮🤮🤢	1	negative	0.9998114705085754	User Interface & Experience	2024-09-11
164	1	Error occurred try again for 5 days tele birr user not found ለራሴ አዝዤ (Error occurred try again for 5 days tele birr user not found ለራሴ አዝዤ)	1	negative	0.9980644583702089	Transaction Performance	2024-07-08
165	1	He was shed (ደደገነሐ)	5	negative	0.9527039527893066	Transaction Performance	2024-10-15
166	1	this app is not available	1	negative	0.9997593760490416	User Interface & Experience	2025-01-02
167	1	Shockingly bad! Even when it decides to work, it's painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank	1	negative	0.9997275471687316	Transaction Performance	2024-09-06
168	1	I dont recommand it to any one	1	negative	0.9855504035949708	Transaction Performance	2024-08-23
169	1	Best app to me	5	positive	0.997821807861328	Account Access Issues	2024-10-11
170	1	What is the problem? (አይሰራም እኮ ምንድን ነው ችግሩ?)	1	negative	0.9985055923461914	Transaction Performance	2024-07-26
171	1	Very Very nice 👌 👍 (Very Very nice 👌 👍)	5	positive	0.9998030066490172	Customer Support	2024-05-23
172	1	BOA	5	negative	0.7410538196563721	Transaction Performance	2024-10-11
173	1	Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer	4	negative	0.953279197216034	Transaction Performance	2024-10-04
174	1	I'm sorry but what kind of stupid developer thinks the app will be faster if we disable "Developer mode"? I've never seen such degeneracy in my entire life, please get rid of this feature	1	negative	0.9996848106384276	Transaction Performance	2024-05-30
175	1	I like	5	positive	0.9998149275779724	Transaction Performance	2024-09-16
176	1	faster bank of Abissinya	5	positive	0.9722142815589904	Feature Requests	2025-04-08
177	1	The worst banking app ever. Never works!	1	negative	0.999800741672516	User Interface & Experience	2024-12-14
178	1	The alpha has become very difficult (አፑ በጣም አስቸጋሪ ሆኗል)	1	negative	0.9990412592887878	Transaction Performance	2024-06-25
179	1	Tucked off (አይሰራም አስተካክሉት)	5	negative	0.9489011764526368	Transaction Performance	2024-10-26
180	1	It's not functional at all. It keeps saying "error". Unable to activate.	1	negative	0.9998112320899964	Transaction Performance	2024-07-13
181	1	slow only some times the wey it is veary nice app	5	positive	0.949857532978058	Customer Support	2024-06-05
182	1	For anyone who wants to download it, just don't!!!	1	negative	0.999398112297058	Transaction Performance	2025-03-19
183	1	The best of best	5	positive	0.9998393058776855	Account Access Issues	2025-01-09
184	1	Absonia all the choice (አቢስኒያ የሁሉም ምርጫ)	5	negative	0.97409588098526	Transaction Performance	2024-07-29
185	1	It crashes frequently. It launches on Android 8.1 but I don't think it actually works on versions less than 10. If so, it shouldn't be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.	1	negative	0.999210000038147	Transaction Performance	2024-09-06
186	1	BoA system is confartable	5	negative	0.9980142116546632	Transaction Performance	2025-06-01
187	1	FIX YOUR Apollo!! You guys where the best 👌	1	positive	0.999450385570526	Transaction Performance	2024-07-23
188	1	Iderso (Ayseram)	1	negative	0.9952834248542786	Transaction Performance	2024-05-28
189	1	It needs more improvment	2	negative	0.998616099357605	Transaction Performance	2024-11-24
234	1	BoA Greqt Ethiopian bank. (BoA Greqt Ethiopian bank.)	5	negative	0.9895251989364624	Transaction Performance	2025-03-11
279	1	No work app (No work app)	5	negative	0.9913414120674132	User Interface & Experience	2024-07-15
190	1	I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.	1	negative	0.999800145626068	Transaction Performance	2024-11-29
191	1	Bast bank of ethiopia	5	positive	0.9978061318397522	Transaction Performance	2024-11-12
192	1	None (👍)	5	negative	0.99668151140213	Transaction Performance	2024-11-11
193	1	good	5	positive	0.999816119670868	Account Access Issues	2025-05-22
194	1	The app is not good need a few work	3	negative	0.9997538924217224	Account Access Issues	2024-06-11
195	1	None (😡😡😡🤬🤬🤬)	1	negative	0.99668151140213	Transaction Performance	2025-01-16
196	1	Verry Amazing App from all IB	5	positive	0.9997394680976868	User Interface & Experience	2025-03-01
197	1	it just doesn't work...so frustrating	1	negative	0.999774158000946	Transaction Performance	2025-04-07
198	1	The new app is very good	5	positive	0.9998589754104614	Account Access Issues	2024-07-13
199	1	The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.	1	negative	0.9998020529747008	Transaction Performance	2024-11-17
200	1	Wow! what a disgrace for BOA. The app barely works. Too slow and always returns error.	1	negative	0.9997871518135072	Transaction Performance	2024-06-03
201	1	Miliyone.	5	negative	0.9675787687301636	Transaction Performance	2024-07-05
202	1	Nice to meet you my proud bank in Ethiopia.. I'm a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service's over the world please? I'm working a lot of international money.But i can't get direct in Ethiopia because of don't knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please 🙏🙏🙏?	5	positive	0.9683735966682434	Transaction Performance	2024-10-18
203	1	This app doesn't work	1	negative	0.9997921586036682	User Interface & Experience	2024-06-30
204	1	Ok	5	positive	0.9997851252555848	Transaction Performance	2024-10-04
205	1	Take some note from CBE mobile banking app, it's the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests 🙌	1	positive	0.9958856701850892	User Interface & Experience	2024-08-03
206	1	Please try another because this app doesn't feet the need of this generation	1	negative	0.9962698221206664	User Interface & Experience	2024-10-25
207	1	Best bank	5	positive	0.9997438788414	Account Access Issues	2025-02-08
208	1	Worst app ever, not user friendly, even doesn't serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank	1	negative	0.9998094439506532	User Interface & Experience	2024-08-07
209	1	Please this app on my android phone	3	positive	0.6488640308380127	User Interface & Experience	2024-11-20
210	1	It's very difficult to use the user, app,ones dawenload the user can't operate well , no one can help me,	1	negative	0.9997815489768982	Feature Requests	2024-07-23
211	1	It doesn't work on my 2 devices A05 and A34 😡	1	negative	0.9996792078018188	Transaction Performance	2024-12-02
212	1	exceptional	5	positive	0.9998514652252196	Transaction Performance	2025-06-03
213	1	I have been using this app for two years.It is amazing.	5	positive	0.9998595714569092	User Interface & Experience	2025-02-01
214	1	This is the most stupid app I've seen, why would I turn off developer mode just because you can't make your app secure, this clearly indicates the app has very poor implementation and unskilled developers.. There are a lot of people who need developer option for different reasons. Please for the sake of the bank, fix this thing... Even the most secure international banking apps don't require it. Not to mention the lag and crashes	1	negative	0.9997655749320984	User Interface & Experience	2024-07-12
215	1	Almost better compared to cbe where it is not qualified for	4	negative	0.9741679430007936	Transaction Performance	2025-03-09
216	1	Nice looking app but a terrible user experience.	1	negative	0.9958102703094482	Customer Support	2024-09-03
217	1	Lemn calls?? (Lemn embi yilal??)	5	negative	0.9965636134147644	Transaction Performance	2024-12-30
218	1	Cool	4	positive	0.9998509883880616	Transaction Performance	2024-05-22
219	1	Best app, somehow waiting a few minutes	5	negative	0.6387040019035339	Account Access Issues	2025-01-23
220	1	It has been a while since you guys started giving the mobile app service but still couldn't get it to work. I'm sure you know that it doesn't work already but not sure if you're lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.	1	negative	0.9997615218162536	Transaction Performance	2024-12-10
221	1	It demands to disable developer option. (It demands to disable developer option.)	1	negative	0.9994658827781676	Transaction Performance	2024-06-27
222	1	Corrupted and poor app	1	negative	0.9997439980506896	User Interface & Experience	2024-07-24
223	1	None (😭😭😭😭😭😭😭)	1	negative	0.99668151140213	Transaction Performance	2024-06-05
224	1	I can't dijitalize my atm in the apollo app on my phone	1	negative	0.9946038126945496	User Interface & Experience	2025-01-22
225	1	Horrible	1	negative	0.9997841715812684	Transaction Performance	2024-08-14
226	1	The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32	1	negative	0.9994600415229796	Transaction Performance	2025-03-10
227	1	Best app	5	positive	0.999686598777771	Account Access Issues	2025-05-09
228	1	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	negative	0.9996716976165771	Transaction Performance	2025-04-08
229	1	This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I'm tired of having to constantly switch the developer options off and on. I've been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.	4	positive	0.9543284177780152	Transaction Performance	2024-12-08
230	1	It must be very updated ........ I am the bank of the bank. (በጣም መሻሻል አለበት....... ለ ባንኩ ማይመጥን መተግበርያ ነው ::)	2	negative	0.9425646662712096	Transaction Performance	2024-12-30
231	1	It is ok	5	positive	0.9998496770858764	Transaction Performance	2024-09-01
232	1	Good App	4	positive	0.9998493194580078	Account Access Issues	2024-10-12
235	1	I don't know what is wrong with BOA as a bank in general. It's been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn't take a screenshot (or can't even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it's the worst!	1	negative	0.9998201727867126	Transaction Performance	2024-08-03
236	1	so far good but always it lugs	3	negative	0.9829469919204712	Transaction Performance	2024-08-17
237	1	Its not working.	1	negative	0.9997856020927428	Transaction Performance	2024-06-24
238	1	It's nice apps	1	positive	0.999875545501709	Customer Support	2024-06-04
239	1	Excellent app (Excellent app)	5	positive	0.9997753500938416	User Interface & Experience	2024-08-21
240	1	It's very good but sometimes isn't work probably	5	negative	0.937102735042572	Account Access Issues	2024-07-12
241	1	Awesome application. But lately its crashing everytime i opened it.	4	negative	0.9127686619758606	Transaction Performance	2024-09-05
242	1	It's useless app downgraded.	1	negative	0.999807059764862	User Interface & Experience	2024-12-29
243	1	Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.	1	negative	0.9941067695617676	Transaction Performance	2024-12-06
244	1	The poorest mobile banking survice ever. Only error reports frequently	1	negative	0.999705970287323	Transaction Performance	2024-07-16
245	1	Brail (ትርሃስ)	5	negative	0.9183748960494996	Transaction Performance	2024-08-19
246	1	This app is incredibly frustrating to use. It’s filled with issues that make it difficult to navigate and complete tasks efficiently. I’ve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.	1	negative	0.998582124710083	Transaction Performance	2024-09-26
247	1	Amazing (Amazing)	5	positive	0.9998841285705566	Transaction Performance	2024-09-19
248	1	please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachable…it is serious issue!	1	negative	0.999267876148224	Transaction Performance	2025-02-15
249	1	🙏🙏🙏	5	negative	0.697056770324707	Transaction Performance	2024-07-05
250	1	The deserved Jamal (ጀማል ውቀቱ)	5	positive	0.993946135044098	Transaction Performance	2024-09-30
251	1	It is no fun; (አይሰራም ሼም ነው፤)	1	negative	0.9995850920677184	Transaction Performance	2024-12-23
252	1	I can't believe in this day and age, one of the major banks of the country can't seem to understand that having a working mobile payment option is a **MUST** to survive. I have decided to move my accounts to CBE and Awash because of this. Can't be bothered with this useless app.	1	negative	0.9974097609519958	Transaction Performance	2024-07-04
253	1	Not unexpected from this largest bank of APP .... Zargg: (ከዚህ ትልቅ ባንክ የማይጠበቅ ድንዝዝዝዝ ያለ App.... ዛግግግ ነው ያረገኝ 😡😡😡)	1	negative	0.999556839466095	User Interface & Experience	2024-06-20
254	1	Always slow and doesn't work on weekends if you are in a rush or a merchant this app is not for you	1	negative	0.9994396567344666	Transaction Performance	2024-07-23
255	1	Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.	1	negative	0.9994294047355652	User Interface & Experience	2024-07-18
256	1	Great service	5	positive	0.9998434782028198	Transaction Performance	2024-11-12
257	1	Don't trust this bank and its service.	1	negative	0.99963116645813	Transaction Performance	2024-08-16
258	1	uselss app dont download (uselss app dont download)	1	negative	0.998130977153778	User Interface & Experience	2024-07-26
259	1	Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one	1	negative	0.999760091304779	Transaction Performance	2024-07-19
260	1	No work (No work)	5	negative	0.9989100694656372	Transaction Performance	2024-07-10
261	1	I was using this app for long time it amazing user friendly UI but the i can't found for get pin button in the app	3	negative	0.901659607887268	User Interface & Experience	2025-01-07
262	1	thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...	5	positive	0.9878897070884703	Transaction Performance	2024-11-12
263	1	Meskelu Metku (meskelu Metku)	5	negative	0.9598642587661744	Transaction Performance	2024-06-17
264	1	It's a useless app	1	negative	0.9998058676719666	User Interface & Experience	2024-08-02
265	1	The worst mobile banking app! It doesn't load (seems like with the perfect WiFi and data connection it still manages to have network issues), when you finally get into the app, it makes it so hard more than it should be to send money.	1	negative	0.9996273517608644	User Interface & Experience	2024-05-31
266	1	I can't use the app unless I turn off developer mode?? What kind of stupid rule is that?? The worst experience for a banking app!!	1	negative	0.9998013377189636	User Interface & Experience	2024-05-26
267	1	When I try to use the application it says 'developer setting should be off' where is the setting to off this play Still doesn't work for me	3	negative	0.999801218509674	Transaction Performance	2024-07-24
268	1	Good application	5	positive	0.999854564666748	Account Access Issues	2024-09-16
269	1	Excited by your service	5	positive	0.9997963309288024	Transaction Performance	2024-06-02
270	1	GOAT 🐐 🐐 (GOAT 🐐 🐐)	5	negative	0.9574629664421082	Transaction Performance	2024-11-19
271	1	Bank of abissena	1	positive	0.948011875152588	Transaction Performance	2024-12-17
272	1	Amrumehamed	1	positive	0.6924049258232117	Transaction Performance	2024-10-21
273	1	The worst experience ever	1	negative	0.999792754650116	Transaction Performance	2024-08-29
274	1	The worest app ever made i would not recommende for no one	1	negative	0.5611279010772705	User Interface & Experience	2024-09-16
275	1	Good app and helpful	5	positive	0.9998565912246704	Account Access Issues	2025-01-03
276	1	Wow what amazing	5	positive	0.9998555183410645	Transaction Performance	2024-12-30
277	1	Great UI and seamless UX. I love it!!	5	positive	0.9998557567596436	Transaction Performance	2024-09-25
278	1	Useless	1	negative	0.9997991919517516	Transaction Performance	2024-07-11
280	1	Nice	5	positive	0.9998552799224854	Customer Support	2024-12-26
281	1	Very good app	5	positive	0.9998675584793092	Account Access Issues	2024-07-07
282	1	Good🙏	5	negative	0.697056770324707	Account Access Issues	2025-01-12
283	1	Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking	1	negative	0.9996222257614136	Transaction Performance	2024-07-19
284	1	This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.	1	negative	0.9987001419067384	Transaction Performance	2024-08-07
285	1	Nic ap	5	positive	0.9873360991477966	Transaction Performance	2024-12-19
286	1	Poor application. It turned off by itself	1	negative	0.999744474887848	Transaction Performance	2024-07-23
287	1	very good	5	positive	0.9998520612716676	Account Access Issues	2025-04-03
288	1	Developer option to be off really	1	negative	0.9903940558433532	Transaction Performance	2024-06-06
289	1	Improved to be the best	5	positive	0.9998570680618286	Account Access Issues	2025-03-11
290	1	Peace Absisyni IMPLETE WELL THE GOOD BANGINE WILL YOU LEARNED THE WELL. But the passage of the rape of the random of the ransom is sometimes rarely changed, and we will choose to be dead * of the days that you have been dead. * (ሰላም አቢሲኒያዎች የሞባይል ባንኪንጋችሁ ተጠቃሚ ነኝ አገልግሎቱን ስላስጀመራችሁለን እናመሰግናለን። ነገር ግን አለፎ አልፎ የነበረው የማስፈንጠሪያው በአግባቡ አለመስራት አልፎ አልፎ ወደመስራት ተቀይሯል ድሮ እንደነበራችሁ እናውቃለን ዘንድሮም ብትኖሩልን እንመርጣለን *ከዘመን አንጉደል*)	3	negative	0.9718575477600098	Transaction Performance	2024-08-10
291	1	Nice app and it's easy to use	5	positive	0.999751627445221	Customer Support	2025-02-21
292	1	It doesn't work.	1	negative	0.9997761845588684	Transaction Performance	2024-09-12
293	1	Senayt Mesfin (senayt Mesfin)	4	negative	0.843795120716095	Transaction Performance	2024-11-08
294	1	Hey Google	5	positive	0.9950044751167296	Transaction Performance	2024-11-21
295	1	This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. Can’t log in, can’t transfer money, can’t even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path🙏	1	negative	0.999026656150818	Transaction Performance	2025-05-21
296	1	boa of mobile backing	5	negative	0.980626106262207	Transaction Performance	2025-04-09
297	1	Bad app . it stuck when you open and noting WORKS.	1	negative	0.9995198249816896	User Interface & Experience	2025-04-23
298	1	None (❤❤❤❤❤❤)	5	negative	0.99668151140213	Transaction Performance	2024-11-12
299	1	Your system is the worst you should do better😡😡😡😡😡😡	2	negative	0.999800741672516	Transaction Performance	2024-12-11
300	1	It does not blow (ጭራሽ አይነፋም)	1	positive	0.997297465801239	Transaction Performance	2024-07-12
301	1	Not yet completely working this App. i don't know when is it will be working properly! Its Sad!!!	1	negative	0.9993754029273988	Transaction Performance	2024-07-31
302	1	Very easy to use	5	positive	0.999142289161682	Feature Requests	2024-09-30
303	1	Always do update and that is annoying	3	negative	0.9994439482688904	Transaction Performance	2025-01-27
304	1	always problematic hardly works	1	negative	0.99955552816391	Transaction Performance	2025-03-26
305	1	Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It's annoying.	1	negative	0.999325394630432	User Interface & Experience	2024-09-13
306	1	The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.	1	negative	0.9997739195823668	User Interface & Experience	2024-07-19
307	1	It is not working at all	1	negative	0.9997811913490297	Transaction Performance	2024-07-16
308	1	vey SLOW APP. SOFARE AOFARE APP. If you can, you will be fully again completely. It seems that the opening of the APP would be corrupted. (very slow app. አቢሲኒያን ከሚያክል ባንክ የማይጠበቅ software app. ከቻላችሁ ሙሉ ለሙሉ እንደገና አሰሩት።በጣም ይመራያል ያሳፍራል።ለapp የወጣው ወጭ በሙስና የተበላ ነው የሚመስለው።)	1	negative	0.999080777168274	User Interface & Experience	2024-11-12
309	1	the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.	5	positive	0.957535207271576	Transaction Performance	2025-04-04
310	1	Good but not working top up	5	positive	0.9643874168395996	Account Access Issues	2024-05-20
311	1	Bad	1	negative	0.999782383441925	Transaction Performance	2024-10-10
312	1	Nice appp	5	positive	0.9997910857200624	Customer Support	2024-08-11
313	1	The worest MB app ever!!🙄	1	negative	0.8734642267227173	User Interface & Experience	2024-09-02
314	1	It is so bad apps ,it doesn't work	1	negative	0.9998026490211488	User Interface & Experience	2024-07-06
315	1	this is worest app 24/7 loading	1	negative	0.993474304676056	User Interface & Experience	2025-06-01
316	1	Plz fix the Apps ....screenshot lovation hide from glarey share botten not work😔😔	1	negative	0.9987314343452454	Transaction Performance	2024-08-30
317	1	Really Bank	5	positive	0.982058048248291	Transaction Performance	2024-06-12
318	1	Boa	4	negative	0.7410538196563721	Transaction Performance	2025-01-18
319	1	It's easy used to operate program and secured 👍👍	4	negative	0.9652976989746094	Feature Requests	2024-09-25
320	1	Please Recover thank you	5	positive	0.9997314810752868	Transaction Performance	2024-07-02
321	1	Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? I’m not slowing down my phone just to use your God damn app. 🤮🤮🤮🤮	1	negative	0.9964292645454408	Transaction Performance	2024-10-04
322	1	Oene	5	positive	0.8278861045837402	Transaction Performance	2024-11-12
323	1	Whenever I try to sign in app close please fixed it out	2	negative	0.9976611137390136	User Interface & Experience	2025-01-21
324	1	Bad app . (Bad app .)	1	negative	0.9997970461845398	User Interface & Experience	2024-08-06
325	1	Worest app (Worest app)	1	negative	0.96744042634964	User Interface & Experience	2024-10-03
326	1	all worck	5	negative	0.9971314668655396	Transaction Performance	2025-03-19
327	1	after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?	1	negative	0.9973751306533812	Transaction Performance	2025-03-31
328	1	yideg	1	negative	0.7675806283950806	Transaction Performance	2025-04-18
329	1	The application used to work well. But after updates I'm not able to use the forgot password feature, which is blocking me from accessing it as a whole.	1	negative	0.9988825917243958	Transaction Performance	2024-08-20
330	1	It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.	1	negative	0.9991043210029602	Transaction Performance	2024-07-23
331	1	Terrible Bank Experience It’s unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, there’s a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. They’ve put me in embarrassing situations countless times, and customer care never fixes anything. I’ve switched banks, and you should too!	1	negative	0.9995194673538208	Transaction Performance	2024-10-14
332	1	The poorest mobile banking I have seen in the industry. Is not stable to login and post transactions. Is not attractive. Error reports frequently.	5	negative	0.9998160004615784	Transaction Performance	2024-06-13
333	1	it's really good 👍	5	positive	0.9998701810836792	Account Access Issues	2025-04-23
334	1	the app used to run fine, but now it takes like forever to even open the main dashboard and sometimes it just crashes on its own. you guys gotta step it up. we need this app to be way faster	1	negative	0.9726089239120485	User Interface & Experience	2024-06-27
335	1	Yes active user	5	positive	0.9983929991722108	Transaction Performance	2024-09-17
336	1	Hi I have problem with this App BOA mobile I don't know what is wrong with this App I did many times download but it's sam doesn't work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone	1	negative	0.999367892742157	User Interface & Experience	2024-08-28
337	1	so poor app to use can't start up when open the app	1	negative	0.999744474887848	User Interface & Experience	2024-08-08
338	1	None (✌️✌️)	5	negative	0.99668151140213	Transaction Performance	2024-11-20
339	1	Please make it functional.	5	positive	0.9997920393943788	Transaction Performance	2024-07-03
340	1	GOOD	5	positive	0.999816119670868	Account Access Issues	2024-12-15
341	1	Loved it	5	positive	0.9998797178268432	Transaction Performance	2025-03-14
342	1	I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won't work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!	1	negative	0.9967040419578552	Transaction Performance	2024-12-19
343	1	When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.	1	negative	0.9997933506965636	User Interface & Experience	2024-12-24
344	1	Good service.	3	positive	0.9998533725738524	Account Access Issues	2025-05-25
345	1	Allowed	5	positive	0.9978752136230468	Transaction Performance	2024-07-23
346	1	Worest app, it cannot be downloaded	2	negative	0.9979676604270936	User Interface & Experience	2024-06-05
347	1	Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y'all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.	1	negative	0.9985970854759216	Transaction Performance	2025-03-12
348	1	ok	5	positive	0.9997851252555848	Transaction Performance	2024-08-03
349	1	but not opening on android	4	negative	0.9952228665351868	Transaction Performance	2025-05-19
350	1	None (👏👏👏)	5	negative	0.99668151140213	Transaction Performance	2024-11-24
351	1	it's not work correctly... you must have update it	1	negative	0.9998013377189636	Transaction Performance	2025-04-06
352	1	Awful	1	negative	0.9997954964637756	Transaction Performance	2024-06-06
353	1	The app keeps crashing it stops responding while I'm using it or trying to open the app. Now I have to go to the bank in person to do any banking activities. In short it is the worst mobile banking system in Ethiopia	1	negative	0.9997914433479308	User Interface & Experience	2024-07-11
354	1	The worest app ever	1	positive	0.9535899758338928	User Interface & Experience	2024-10-03
355	1	Wedi Run. (Wedi Tekle .)	5	negative	0.9963843822479248	Transaction Performance	2024-08-11
356	1	Open Open service (Open Open service)	5	positive	0.998820960521698	Transaction Performance	2024-06-26
357	1	The previous application is much better than this one	1	positive	0.9991149306297302	Transaction Performance	2024-07-18
358	1	BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn't experience this kind of challenge while having transactions in other banks' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.	1	negative	0.9993953704833984	Transaction Performance	2024-09-15
359	1	If it is possible I would gove0 star	1	negative	0.9928192496299744	Transaction Performance	2024-10-08
360	1	Update to the simplest way it requires the developer option on and off why this is	5	negative	0.998016357421875	Transaction Performance	2024-10-04
361	1	Goood	4	negative	0.9943867921829224	Transaction Performance	2024-08-06
362	1	The best app	5	positive	0.9998469352722168	Account Access Issues	2024-06-06
363	1	When she wants to search for a very weak alp, you do not open the banks, such as Awash and Business Bank, you need a change (እጅም በጣም ደካማ አፕ ነው ሲፈልግ ይከፍታል ሲፈልግ አይከፍትም ከአዋሽ እና ንግድ ባንክ የመሳሰሉ ባንኮች ሲወዳደር ሞባይል ባንኪንግ App እጅግ የሚያበሳጭ ነው ለውጥ ያስፈልጋችኋል)	1	negative	0.9984778761863708	Transaction Performance	2024-09-05
364	1	What is that disable developer option I have never seen any app commands.	3	negative	0.9988861680030824	Transaction Performance	2024-05-22
365	1	Won't work (አይሰራም አፑ ለምንድነው)	1	negative	0.9987788796424866	Transaction Performance	2024-06-06
366	1	It's not working as it was , so much need to improve, it was the best but not anymore	2	negative	0.9968530535697936	Transaction Performance	2024-08-01
367	1	experienced	5	positive	0.9950610995292664	Transaction Performance	2024-07-14
368	1	Gio	4	positive	0.9969680905342102	Transaction Performance	2024-08-19
369	1	A painfully slow banking app service. Please don't make it your choice!	1	negative	0.999660849571228	Transaction Performance	2024-10-13
370	1	Ademtahir (Ademtahir)	5	positive	0.9415137767791748	Transaction Performance	2024-11-20
371	1	good but they don't update enough don't add new things	3	negative	0.9693678617477416	Transaction Performance	2025-04-04
372	1	It is cool (አሪፍ ነው በርቱልን)	5	positive	0.9998131394386292	Transaction Performance	2024-10-03
373	1	Okay	5	positive	0.9997709393501282	Transaction Performance	2024-11-03
374	1	this is so disappointing app 😞	1	negative	0.9998024106025696	User Interface & Experience	2024-07-31
375	1	Hussenaliumar (Hussenaliumar)	5	negative	0.9610567688941956	Transaction Performance	2024-08-29
376	1	I love it	5	positive	0.9998799562454224	Transaction Performance	2025-01-14
377	1	best app	5	positive	0.999686598777771	Account Access Issues	2025-03-25
378	1	Hello, I’m facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says “BoaMobile closed because this app has a bug.” I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.	1	negative	0.999415159225464	Transaction Performance	2025-06-03
379	1	How disappointing!	1	negative	0.99981290102005	Transaction Performance	2024-05-25
380	1	this version is not working for me I cannot even buy card. I cannot send money	1	negative	0.9995684027671814	Transaction Performance	2025-03-30
381	1	It's not opening. Really frustrating	1	negative	0.9997020363807678	Transaction Performance	2025-03-01
382	1	Abdulkadir (Abdulkadir)	5	positive	0.9521939754486084	Transaction Performance	2024-10-11
383	1	great boa	5	positive	0.9992689490318298	Transaction Performance	2025-04-10
384	1	The worst app ever	1	negative	0.9997934699058532	User Interface & Experience	2024-08-26
385	1	Pretty good for a banking app, it still lacks some things with in the ui and with the speed of the app but overall it's a good application. Thank you 5/5👍🏻	5	positive	0.9995549321174622	User Interface & Experience	2024-07-09
386	1	None (🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹👍👍👍👍👍👍👍)	5	negative	0.99668151140213	Transaction Performance	2025-02-04
387	1	mal	5	negative	0.9996137022972108	Transaction Performance	2024-07-16
388	1	ABDU MUDESR	2	positive	0.7394682765007019	Transaction Performance	2024-06-01
389	1	considering the fact the bank is huge this app really bad you could do better	1	negative	0.9997418522834778	User Interface & Experience	2025-03-25
390	1	The worst banking app	1	negative	0.9998050332069396	User Interface & Experience	2024-07-15
391	1	It's a Gebre (Betanya Gebre)	3	negative	0.591988742351532	Transaction Performance	2024-08-23
392	1	Bes and freindly app	5	negative	0.9136509895324708	User Interface & Experience	2024-09-13
393	1	BoA	2	negative	0.7410538196563721	Transaction Performance	2025-05-20
394	1	To get good quality (To get good quality)	5	positive	0.9996272325515748	Account Access Issues	2024-07-27
395	1	The is not functional at all?	2	negative	0.9997331500053406	Transaction Performance	2025-02-12
396	1	It's been two months now, I cannot do any transaction using this app. It's really disappointing. I am using bank of Abyssinia currently because it's the nearest bank to my work place. The bank is turning to the worst bank in the country day by day. They always respond to customers that they are updating their system all year long, I think that's what they train their customer service operators to do.	1	negative	0.999635934829712	Transaction Performance	2024-06-26
397	1	I can not open and use the application,please help me!	5	negative	0.9995014667510986	Feature Requests	2024-08-15
398	1	Fast and reliable	5	positive	0.9998595714569092	Feature Requests	2024-11-18
399	1	we want international mobile banking	1	positive	0.958784520626068	Transaction Performance	2024-07-22
400	1	Very poor	1	negative	0.9997965693473816	Transaction Performance	2024-05-21
401	2	Very good app, but please make it reliable . it crashes sometimes .	4	positive	0.964985489845276	User Interface & Experience	2025-05-22
402	2	Easy to use	5	positive	0.9988542795181274	Feature Requests	2025-04-01
403	2	Excellent !!! (Excellent !!!)	5	positive	0.9998650550842284	Transaction Performance	2025-04-01
404	2	Malkaamuu wet people (malkaamuu Jiidhaa Namoo)	5	negative	0.9970818161964417	Transaction Performance	2025-05-30
405	2	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	positive	0.9982792139053344	Transaction Performance	2025-05-26
406	2	Very good app,	5	positive	0.9998691082000732	Account Access Issues	2025-05-22
407	2	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	positive	0.99980491399765	Transaction Performance	2025-05-06
408	2	it's very good	5	positive	0.9998470544815063	Account Access Issues	2025-03-23
409	2	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	positive	0.9895473718643188	Transaction Performance	2025-04-01
410	2	It is very excellent anddynamic plus user friend all in one bank apps of the era. I loved it.	5	positive	0.999854326248169	Transaction Performance	2025-03-30
411	2	realy I donot seen like this application ! fast ,safe ande confortable	5	positive	0.989232301712036	Transaction Performance	2025-03-28
412	2	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	negative	0.992516815662384	Transaction Performance	2025-05-22
413	2	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	negative	0.9585952758789062	Transaction Performance	2025-04-01
414	2	None (👍👍👍)	5	negative	0.99668151140213	Transaction Performance	2025-03-24
415	2	happy	5	positive	0.99987530708313	Transaction Performance	2025-05-02
416	2	I am more satisfied in this app . More sure you have to secure.	4	positive	0.9787843823432922	User Interface & Experience	2025-04-01
417	2	to other bank is bad	1	negative	0.9997149109840392	Transaction Performance	2025-04-25
418	2	everything is easy thank you cebe	5	positive	0.9998396635055542	Feature Requests	2025-04-10
419	2	everytime you uninstall the app you have to reach them out physically. very oldy! if that's one of security layer, they'd check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).	1	negative	0.9905162453651428	User Interface & Experience	2025-06-04
420	2	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	negative	0.9861215949058532	Transaction Performance	2025-04-18
421	2	i love it 😍😘	5	positive	0.9998791217803956	Transaction Performance	2025-05-24
422	2	best app for this vast digital finanical word	5	positive	0.9931873083114624	Account Access Issues	2025-03-23
423	2	good application	5	positive	0.999854564666748	Account Access Issues	2025-03-25
424	2	Growth (ጎበዝ)	5	positive	0.9996200799942015	Transaction Performance	2025-04-09
425	2	Excellent🙏app (Excellent🙏app)	5	negative	0.5965244770050049	User Interface & Experience	2025-04-01
426	2	Very good	5	positive	0.9998520612716676	Account Access Issues	2025-03-30
427	2	its not working over safari network	1	negative	0.9991377592086792	Transaction Performance	2025-05-22
428	2	In the updated version of the app, it takes more time to download the receipt.	3	negative	0.9985652565956116	Transaction Performance	2025-04-15
429	2	the worst Mobile banking i have ever seen in my life	1	negative	0.9997807145118712	Transaction Performance	2025-04-26
430	2	Good	5	positive	0.999816119670868	Account Access Issues	2025-06-04
431	2	All service of Mobile Banking	5	positive	0.8924254179000854	Transaction Performance	2025-05-06
432	2	this app is very useful app,it saves time,and it is secure	4	positive	0.9992597699165344	User Interface & Experience	2025-05-21
433	2	More than garrantty bank EBC.	4	positive	0.9971959590911864	Transaction Performance	2025-06-07
434	2	This app don't have self activation only you have to look near cbe branch that's disgusting	1	negative	0.9960438013076782	User Interface & Experience	2025-05-10
435	2	bring back the screenshot feature.	1	positive	0.9942916631698608	Transaction Performance	2025-04-05
436	2	I fails mid transaction, No screenshot, download don't work, link shared not working bring back the old app this is usless	1	negative	0.9996533393859864	Transaction Performance	2025-03-26
437	2	It makes life easy!👌	5	positive	0.9993600249290466	Feature Requests	2025-05-24
438	2	great when it works	5	positive	0.9998693466186525	Transaction Performance	2025-03-31
439	2	I like	5	positive	0.9998149275779724	Transaction Performance	2025-05-22
440	2	excellent service (excellent service)	5	positive	0.9998505115509032	Transaction Performance	2025-03-31
441	2	thankyou	5	positive	0.999842882156372	Transaction Performance	2025-04-02
442	2	best of bests	5	positive	0.99969482421875	Account Access Issues	2025-03-30
443	2	CBE mobilr bankg	5	positive	0.8703054785728455	Transaction Performance	2025-05-05
444	2	Good app	5	positive	0.9998493194580078	Account Access Issues	2025-05-15
445	2	Cbe mobile banking	5	positive	0.8304278254508972	Transaction Performance	2025-05-20
446	2	Great app!	4	positive	0.9998462200164796	User Interface & Experience	2025-03-31
447	2	It's good but try to make it facilitate for your client	4	positive	0.9491764903068542	Account Access Issues	2025-06-02
448	2	goods app!! pleace update this apps??	4	negative	0.9845630526542664	User Interface & Experience	2025-03-28
449	2	super	5	positive	0.998783528804779	Feature Requests	2025-04-26
450	2	wow best application ever	5	positive	0.9997984766960144	Transaction Performance	2025-05-09
451	2	Heza (አዛ)	1	positive	0.9315950274467468	Transaction Performance	2025-05-04
452	2	NICE bank	5	positive	0.999805510044098	Customer Support	2025-06-03
453	2	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	positive	0.9939066767692566	Transaction Performance	2025-05-14
454	2	thankyou every one	5	positive	0.99984610080719	Transaction Performance	2025-05-25
455	2	commercial dank... (commercial dank...)	5	negative	0.9961976408958436	Transaction Performance	2025-03-23
456	2	Betam defenders have too (bek betam kelal)	5	negative	0.9568300247192384	Transaction Performance	2025-03-31
457	2	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	negative	0.9986202716827391	User Interface & Experience	2025-05-22
458	2	Sometimes it has a nasty lag for several hour fix that , the rest is 👌	4	negative	0.9966771602630616	Transaction Performance	2025-05-22
459	2	i like everything of this app	5	positive	0.9996908903121948	User Interface & Experience	2025-05-27
460	2	I Like it	5	positive	0.99985933303833	Transaction Performance	2025-04-02
461	2	its not fast	1	negative	0.9949808716773988	Feature Requests	2025-05-24
462	2	goid	5	negative	0.7087010741233826	Transaction Performance	2025-04-28
463	2	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	negative	0.9991102814674376	Transaction Performance	2025-05-31
464	2	Unreliable!	1	negative	0.9997379183769226	Transaction Performance	2025-05-02
465	2	Do not you show the sender office or organization or organization of a number of a minister or organization? It shows a person when you pay for individual or organization. (ከአንድ መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ በርከት ላለ ሰው ሲላክ የላኪውን መስሪያ ቤት ወይም ድርጅት ወይም ግለሰብ እንዲያሳይ አታደርጉም ? ግለሰብ ለግለሰብ ወይም ለድርጅት ሲከፍል ያሳያል ።)	5	negative	0.990812599658966	Transaction Performance	2025-03-31
466	2	nice apps where network is good in connection	5	positive	0.9994925260543824	Customer Support	2025-04-18
467	2	this app is my favorite application	5	positive	0.9985677003860474	User Interface & Experience	2025-03-23
468	2	nice app	5	positive	0.9998061060905457	Customer Support	2025-05-19
469	2	better service	5	positive	0.9982219338417052	Transaction Performance	2025-05-31
470	2	very interesting app	5	positive	0.9997968077659608	User Interface & Experience	2025-04-01
471	2	Beautiful (جميل)	5	positive	0.999849796295166	Transaction Performance	2025-04-11
472	2	that's nice (ቆንጆ ነው)	5	positive	0.9998441934585572	Customer Support	2025-03-31
473	2	Awosome!!!	5	positive	0.6944913268089294	Transaction Performance	2025-05-22
474	2	it is so nice	5	positive	0.9998714923858644	Customer Support	2025-04-24
475	2	verygood	3	positive	0.9988996982574464	Transaction Performance	2025-05-05
476	2	the app is proactive and a good connections.	5	positive	0.9998679161071776	Account Access Issues	2025-06-05
477	2	it's awesome!!	5	positive	0.999871015548706	Transaction Performance	2025-05-25
478	2	Too worst (በጣም ከርፋፋ)	1	negative	0.999725878238678	Transaction Performance	2025-05-21
479	2	You need to copy many things from other bank apps like Amole(Dashen)	2	negative	0.9967620372772216	Transaction Performance	2025-04-06
480	2	nice app and fast money transfer	5	positive	0.9994321465492249	Customer Support	2025-03-31
481	2	it's a very good application but sometimes it takes a long time to synchronize	4	negative	0.9900750517845154	Transaction Performance	2025-03-23
482	2	am happy thank you CBE🫡 (am happy thank you CBE🫡)	5	positive	0.999845027923584	Transaction Performance	2025-03-30
483	2	waw	5	negative	0.7346176505088806	Transaction Performance	2025-04-09
484	2	"Why don’t your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"	4	negative	0.9964652061462402	Transaction Performance	2025-06-06
485	2	best app of finance	5	positive	0.9996503591537476	Account Access Issues	2025-06-04
486	2	amazing apps	5	positive	0.9998716115951538	User Interface & Experience	2025-05-06
487	2	customer service is bad nothing is good about this bank	1	negative	0.9996613264083862	Transaction Performance	2025-05-13
488	2	our legitimate bank (our legitimate bank)	4	positive	0.9788581728935242	Transaction Performance	2025-03-31
489	2	accessible to using	5	positive	0.9991167187690736	Transaction Performance	2025-05-23
490	2	Good!👍 (Good!👍)	3	positive	0.9998728036880492	Account Access Issues	2025-04-05
491	2	Good 🔥 (Good 🔥)	5	positive	0.9998077750205994	Account Access Issues	2025-04-14
492	2	Thank you	5	positive	0.9998352527618408	Transaction Performance	2025-03-25
493	2	the best mobile banking app	5	positive	0.9998278617858888	Account Access Issues	2025-05-21
494	2	very nice one	5	positive	0.9998561143875122	Customer Support	2025-03-26
495	2	best app.	5	positive	0.999774158000946	Account Access Issues	2025-05-17
496	2	some times it is difficult to get reciepts for the payment made	1	negative	0.9993370175361632	Transaction Performance	2025-03-23
497	2	it so good app	5	positive	0.999868631362915	Account Access Issues	2025-04-12
498	2	Very Good👍 (Very Good👍)	5	negative	0.8127896785736084	Account Access Issues	2025-04-21
499	2	it is good but it doesn't allow screen shot	4	positive	0.672315239906311	Transaction Performance	2025-04-06
500	2	problem solver and the best fast app	5	positive	0.9997761845588684	Account Access Issues	2025-03-25
501	2	Good and easy to use	5	positive	0.9998656511306764	Feature Requests	2025-03-31
502	2	everthing wellbeok	3	negative	0.7055767178535461	Transaction Performance	2025-04-13
503	2	user-friendly apps.because this app is easy.	5	positive	0.955450713634491	Feature Requests	2025-05-22
504	2	Great impact but why Developer option turnoff if you fix 🙏 🙏 🙏	5	negative	0.9841780066490172	Transaction Performance	2025-05-17
505	2	Good ,easy to use	5	positive	0.9998592138290404	Feature Requests	2025-05-16
506	2	None (👌👍)	5	negative	0.99668151140213	Transaction Performance	2025-06-04
507	2	very nice 👍 (very nice 👍)	5	positive	0.9998216032981871	Customer Support	2025-05-23
508	2	nice app 👌 (nice app 👌)	5	positive	0.997610569000244	Customer Support	2025-04-12
509	2	good	4	positive	0.999816119670868	Account Access Issues	2025-06-05
510	2	yetemeta	1	positive	0.6553669571876526	Transaction Performance	2025-06-03
511	2	the Best	1	positive	0.9998332262039183	Account Access Issues	2025-04-26
512	2	Good halan is cbe (halan garidhaa cbe)	5	positive	0.993699550628662	Transaction Performance	2025-03-30
513	2	The sum is good.	3	positive	0.9998589754104614	Account Access Issues	2025-03-30
514	2	best transaction method of financial	5	positive	0.9995972514152528	Transaction Performance	2025-04-01
515	2	Dear cbe this app is not comparable with 21century and pls try to solve it.💀💀💀	1	negative	0.9995038509368896	Transaction Performance	2025-04-01
516	2	It is very Harf but a birr in transfer, and the appearance of the appearance (በጣም ሃሪፍ ነው ግን ብር በሚተላለፍበት ወቅት ተቀንሷል ይላል እላፊ መልክቱ ይደርሳል ግን አይቀንስም)	5	negative	0.986278235912323	Transaction Performance	2025-04-01
517	2	okay 👌👍 (okay 👌👍)	5	positive	0.9923624992370604	Transaction Performance	2025-03-24
518	2	It literarily don't work at all	4	negative	0.9995075464248656	Transaction Performance	2025-04-01
519	2	excellent (excellent)	5	positive	0.99985933303833	Transaction Performance	2025-05-24
520	2	This app is very good. THIS APP IS VERY NICE (ይህ መተግበሪያ በጣም ጥሩ ነው. this app is very nice)	5	positive	0.9998076558113098	Customer Support	2025-05-22
521	2	goode app	5	positive	0.9997406601905824	User Interface & Experience	2025-04-01
522	2	simply for used	4	negative	0.9918004870414734	Transaction Performance	2025-04-11
523	2	Best app	5	positive	0.999686598777771	Account Access Issues	2025-04-04
524	2	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	negative	0.9982808828353882	Transaction Performance	2025-05-02
525	2	not working,why???	5	negative	0.9995881915092468	Transaction Performance	2025-05-17
526	2	very niec (very niec)	5	negative	0.9659066200256348	Transaction Performance	2025-06-04
527	2	to slow	3	negative	0.999487280845642	Transaction Performance	2025-04-09
528	2	It's a problem solver application, go ahead CBE, I love so much.	5	positive	0.9997678399086	Transaction Performance	2025-06-02
529	2	it's best	5	positive	0.999842643737793	Account Access Issues	2025-03-31
530	2	Why stacked sometimes	5	negative	0.9941052198410034	Transaction Performance	2025-05-03
531	2	the best one	5	positive	0.9998371601104736	Account Access Issues	2025-04-06
532	2	network errorrrrrr (network errorrrrrr)	2	negative	0.9971206784248352	Transaction Performance	2025-05-02
533	2	It crashes frequently	4	negative	0.9993256330490112	Transaction Performance	2025-04-30
534	2	easy to use	5	positive	0.9988542795181274	Feature Requests	2025-04-05
535	2	you must added dark mode options ❗	3	negative	0.9864996671676636	Transaction Performance	2025-03-25
536	2	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	negative	0.992915153503418	User Interface & Experience	2025-05-13
537	2	perfectly special	5	positive	0.999879002571106	Transaction Performance	2025-04-18
538	2	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	negative	0.9963226318359376	User Interface & Experience	2025-04-13
539	2	it's need more improvement like Tellbirr.	4	negative	0.999363124370575	Transaction Performance	2025-04-01
540	2	Good and fast	5	positive	0.9998561143875122	Account Access Issues	2025-05-02
541	2	Great version	5	positive	0.9998726844787598	Transaction Performance	2025-03-31
542	2	Keep it up My CBE	5	positive	0.9996104836463928	Transaction Performance	2025-05-29
543	2	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	positive	0.899111807346344	Transaction Performance	2025-05-05
544	2	cbe	5	positive	0.9966009855270386	Transaction Performance	2025-03-25
545	2	The best app is your best app to send money or anything else (ምርጥ አፕሊከሽን ነው ገንዘብ ለመላክም ሆነ ለማንኛውም ነገር ተመችቶኛል በዚው ቀጥሉበት)	5	positive	0.9994106292724608	Account Access Issues	2025-03-25
546	2	The best application I have ever seen in Ethiopia banking industry.	5	positive	0.9997448325157166	Transaction Performance	2025-04-17
547	2	its great app but when updating we can't take screen shot please try to fix it	3	negative	0.9934490323066713	Transaction Performance	2025-04-10
548	2	it is sooo good	5	positive	0.9998735189437866	Account Access Issues	2025-05-24
549	2	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	negative	0.9996201992034912	Transaction Performance	2025-05-17
550	2	The history sometimes misses transactions, tranfer to cbe birr debited but not really transferred, We need to really cop up with the world for real. The hacks and security problems, invest on and solve them.	3	negative	0.994558334350586	Transaction Performance	2025-03-30
551	2	i like the app	5	positive	0.9994398951530457	User Interface & Experience	2025-04-26
552	2	I cannot send to cbebirr app. through this app.	3	negative	0.9953354001045228	User Interface & Experience	2025-06-05
553	2	it's good app	5	positive	0.9998689889907836	Account Access Issues	2025-04-01
554	2	This will be identified by all the time of financing and the simplicity of Ettersmia (ጊዜን ቆጣቢ እና ህይወትን ቀለል ከሚያደርጉ ኢትዬጲያ ካሉ ፋይናንስ አፕልኬሽኖች ሁሉ ይሄ ይለያል)	5	positive	0.9984129667282104	Transaction Performance	2025-04-01
555	2	the worst commercial company that fails to do even the most normal things again and and again.	1	negative	0.9997990727424622	Transaction Performance	2025-05-03
556	2	The name of our account is the name of our account, but the Apple Accounts will be rejected when the Apple Accounts starts MR (አካውንት የምናስገባበት ቦታ ስም ጽፈን ነው ከዚህ በፊት የላክንባቸውን አካዉንቶች የምንፈልገዉ ነገር ግን አዲስ አካውንቶች mr ብለዉ የሚጀምሩ በዝተዋል ግን አፕልኬሽኑ space ስንጽፍ አይቀበልም ቢስተካከል)	4	negative	0.9983945488929749	Transaction Performance	2025-06-04
557	2	i can't take screenshot	1	negative	0.9897894263267516	Transaction Performance	2025-04-18
558	2	Best app I loved it	5	positive	0.999849796295166	Account Access Issues	2025-05-19
559	2	trustful	5	positive	0.9998213648796082	Transaction Performance	2025-05-22
560	2	it's special apps	5	positive	0.9995416402816772	User Interface & Experience	2025-04-15
561	2	I am not exaggerating when I say that this application is one of the biggest players in the banking industry. It has simplified a lot of things for the user, even if the bank is in his pocket. But my opinion is (1), when we transfer money, there is a word limit on the (Note) at the end. Why can't we write our reason briefly? I don't understand why it is limited. On the other hand, there is no limit on the bank. Could you explain this? (2), when we pay for water, why is the code not mentioned	5	negative	0.9912715554237366	Transaction Performance	2025-03-29
562	2	Please bring back the screenshot option. The screenshot download option takes like 15 second appear in gallery and most people don't know about it.	3	negative	0.995722770690918	Transaction Performance	2025-03-25
563	2	Why is Treemon only show a little? (ለምንድነው ትራንዛክሽን ትንሽ ብቻ የሚያሳየው ?)	3	negative	0.998343825340271	Transaction Performance	2025-04-14
564	2	It is veary useful app but screen shout was impossible .solve this problem	5	negative	0.9958590865135192	Transaction Performance	2025-04-01
565	2	very nice and convenient app	5	positive	0.999826729297638	Customer Support	2025-03-24
566	2	I can simply describe this app as "Making all your work easier".	5	positive	0.838257908821106	Feature Requests	2025-04-28
567	2	Yes Yes	5	positive	0.9997482895851136	Transaction Performance	2025-05-21
568	2	Thank you!!!	5	positive	0.9998666048049928	Transaction Performance	2025-04-18
569	2	its very nice	5	positive	0.9998526573181152	Customer Support	2025-05-02
570	2	it's nice	5	positive	0.9998672008514404	Customer Support	2025-05-03
571	2	it's very nice 👍.	5	positive	0.9998632669448853	Customer Support	2025-03-30
572	2	good 👍 (good 👍)	4	positive	0.9998077750205994	Account Access Issues	2025-05-21
573	2	Very bad, can't even load they need to improve their services.	1	negative	0.999816596508026	Transaction Performance	2025-05-22
574	2	it's easy and fast	5	positive	0.9995684027671814	Feature Requests	2025-05-10
575	2	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	negative	0.9997513890266418	Transaction Performance	2025-05-21
576	2	it's very low quality application	1	negative	0.9996594190597534	Transaction Performance	2025-05-04
577	2	great apps	5	positive	0.999853491783142	User Interface & Experience	2025-03-31
578	2	poor service (poor service)	1	negative	0.9997628331184388	Transaction Performance	2025-05-21
579	2	but this app says can't sync	5	negative	0.9988365769386292	User Interface & Experience	2025-04-09
580	2	how to I get my money	5	negative	0.9934091567993164	Transaction Performance	2025-05-23
581	2	it is like a childish app make it better the worst I have ever seen	1	negative	0.9997958540916444	User Interface & Experience	2025-06-02
582	2	yes good	5	positive	0.9998410940170288	Transaction Performance	2025-05-28
583	2	Very Amazing Apps	5	positive	0.9998774528503418	User Interface & Experience	2025-05-04
584	2	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	negative	0.9986681938171388	Transaction Performance	2025-05-11
585	2	very nice app ever!!!	5	positive	0.9998270869255066	Customer Support	2025-04-16
586	2	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	negative	0.9995972514152528	User Interface & Experience	2025-04-21
587	2	nice fast app	5	positive	0.999833345413208	Customer Support	2025-05-23
588	2	best app and update more features *****	5	positive	0.9995169639587402	Account Access Issues	2025-03-23
589	2	Very God thanks	5	positive	0.9993305206298828	Transaction Performance	2025-03-30
590	2	Ever and never seen this kind of app I proud my CBE	5	positive	0.9952196478843688	Transaction Performance	2025-03-31
591	2	l love it	5	positive	0.9998722076416016	Transaction Performance	2025-03-29
592	2	good one	5	positive	0.9998288154602052	Account Access Issues	2025-04-10
593	2	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	positive	0.999572217464447	Transaction Performance	2025-05-09
594	2	wow simple life	5	positive	0.9997076392173768	Transaction Performance	2025-05-04
595	2	wonder full and it is easy to use	5	positive	0.9996142387390136	Feature Requests	2025-04-08
596	2	it doesn't work (it doesn't work)	1	negative	0.9997686743736268	Transaction Performance	2025-05-21
597	2	Really automated...	5	positive	0.8894490003585815	Transaction Performance	2025-03-31
598	2	This application fast, secure and more convenient. Thanks CBE	5	positive	0.9992094039916992	Transaction Performance	2025-03-31
599	2	interesting	3	positive	0.9998446702957152	Transaction Performance	2025-03-30
600	2	the best app	5	positive	0.9998469352722168	Account Access Issues	2025-04-16
601	2	this app is very necessary app many people found it	5	positive	0.9980692267417908	User Interface & Experience	2025-04-03
602	2	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	negative	0.915197730064392	Transaction Performance	2025-03-31
603	2	wow, amazing app	5	positive	0.9998503923416138	User Interface & Experience	2025-04-21
604	2	Recently app keeps closing and the notification after says this app has a bug. Can you make an update please	4	negative	0.9968405961990356	User Interface & Experience	2025-03-31
605	2	I'm lucky to have this🙏 thank you CBE.	5	positive	0.999750792980194	Transaction Performance	2025-04-01
606	2	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	negative	0.9852171540260316	Transaction Performance	2025-04-01
607	2	always we relay on	5	positive	0.9971832633018494	Transaction Performance	2025-04-01
608	2	why the app telling me to turn of developer options please fix it.	1	negative	0.9990994930267334	Transaction Performance	2025-05-07
609	2	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	negative	0.9996353387832642	Transaction Performance	2025-05-27
610	2	best	5	positive	0.9997941851615906	Transaction Performance	2025-06-04
611	2	It is excelent	5	positive	0.9998881816864014	Transaction Performance	2025-04-01
612	2	Great app	5	positive	0.999821126461029	User Interface & Experience	2025-04-21
613	2	easy and reliable	2	positive	0.9998584985733032	Feature Requests	2025-04-08
614	2	Woxe including ribiso (woxe harimo ribiso)	5	negative	0.9916654229164124	Transaction Performance	2025-05-17
615	2	its good but add more features such like. bank statement showing	5	positive	0.9881665110588074	Transaction Performance	2025-04-24
616	2	very good app and stars faction with work	5	positive	0.999858856201172	Account Access Issues	2025-04-02
617	2	cbe very active Bank I'm using CBE app very very satisfaction	5	positive	0.989459753036499	Transaction Performance	2025-04-03
618	2	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	negative	0.947411835193634	Transaction Performance	2025-05-13
619	2	It crashes multiple times everytime you launch it. Fix it. Edit: crash fixed but screenshots has been disabled. I don't know who thought this was a good idea.	1	negative	0.9995493292808532	Transaction Performance	2025-03-26
620	2	well software	5	positive	0.999262273311615	Transaction Performance	2025-03-31
621	2	why did the screen shot stopped ?????	3	negative	0.999007761478424	Transaction Performance	2025-03-24
622	2	safe easy & fast	5	positive	0.999711573123932	Feature Requests	2025-04-01
623	2	Excellent but needed upgrading!	5	positive	0.926374852657318	Transaction Performance	2025-03-28
624	2	do not work this week	3	negative	0.99776029586792	Transaction Performance	2025-04-30
625	2	For me is the best but screenshot was the best (ለኔ በጣም ምርጥ ነው ግን screenshot ማረግ ቢቻል ምርጥ ነበር)	5	positive	0.9994065761566162	Transaction Performance	2025-04-04
626	2	good but these week not oky	4	negative	0.9554153680801392	Account Access Issues	2025-05-06
627	2	Best the best fast	5	positive	0.9998427629470824	Account Access Issues	2025-05-02
628	2	great app!!!	5	positive	0.9998501539230348	User Interface & Experience	2025-04-17
629	2	Fast and Reliable	5	positive	0.9998595714569092	Feature Requests	2025-04-18
630	2	this app is best	1	positive	0.998983919620514	Account Access Issues	2025-03-23
631	2	I liked this app. But the User interface is very basic and not attractive at all.	2	negative	0.9996840953826904	Transaction Performance	2025-06-07
632	2	Biometric security for mobile banking is not available	5	negative	0.9996340274810792	Transaction Performance	2025-04-16
633	2	Good job👍 (Good job👍)	5	positive	0.9998077750205994	Account Access Issues	2025-05-14
634	2	smart app	5	positive	0.999789297580719	User Interface & Experience	2025-04-02
635	2	it is Very Useful app 👍	5	positive	0.994536280632019	User Interface & Experience	2025-04-07
636	2	best app	5	positive	0.999686598777771	Account Access Issues	2025-06-01
637	2	fast and simple easy to use 👌	5	positive	0.998494267463684	Feature Requests	2025-05-12
638	2	there are to many bugs app keeps crashi ng and the update file seems to keep getting worse	2	negative	0.9997902512550354	User Interface & Experience	2025-03-24
639	2	less network, specially to make fee for utility purpose	1	negative	0.994688868522644	Transaction Performance	2025-04-11
640	2	🙏	5	negative	0.697056770324707	Transaction Performance	2025-04-06
641	2	it is best bank	5	positive	0.9997767806053162	Account Access Issues	2025-03-31
642	2	Cool is particularly confirmed to be confirmed (አሪፍ ነው በተለይ የአሻራ ደህነቱ መረጋገጡ ተመችቶኛል)	3	positive	0.9997192025184632	Transaction Performance	2025-03-31
643	2	The app protects me from screenshot after update. Please make revision on the app.	4	positive	0.952551245689392	User Interface & Experience	2025-03-22
644	2	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	negative	0.9997019171714784	Transaction Performance	2025-05-08
645	2	It’s a proud job (hojii bonsaadha)	5	positive	0.9998520612716676	Transaction Performance	2025-05-22
646	2	Why didn't you display cash transactions and bank statement in the mobile banking app?	4	negative	0.9976195693016052	User Interface & Experience	2025-03-31
647	2	Masha all (Masha alla)	5	negative	0.9867808222770692	Transaction Performance	2025-05-31
648	2	update issue	4	positive	0.5473248362541199	Transaction Performance	2025-05-22
649	2	Why not allowed to pay for fuel?	4	negative	0.9974955916404724	Transaction Performance	2025-03-31
650	2	very good	4	positive	0.9998520612716676	Account Access Issues	2025-05-17
651	2	very nice	5	positive	0.9998563528060912	Customer Support	2025-03-31
652	2	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	positive	0.9995881915092468	Transaction Performance	2025-04-01
653	2	needs improvement	1	negative	0.9966731071472168	Transaction Performance	2025-05-06
654	2	The blue (Genat biru)	2	negative	0.9349737763404846	Transaction Performance	2025-04-06
655	2	use ful	5	negative	0.9949980974197388	Feature Requests	2025-04-21
656	2	it's good (ጥሩ ነው)	5	positive	0.9998713731765748	Transaction Performance	2025-04-01
657	2	good job (good job)	5	positive	0.9998433589935304	Account Access Issues	2025-05-26
658	2	Doesn't work properly. It crashes some many times. commercial bank of Ethiopia not only the application but also sending money to own CBE birr doesn't get your money in your bank account. forcefully you must wait 3-5 days to get your money back to your account. walk up CBE the world is going to decentralized finance.	1	negative	0.9995678067207336	Transaction Performance	2025-03-26
659	2	why you change default network? (why you change default network?)	5	negative	0.9985439777374268	Transaction Performance	2025-05-23
660	2	oldie (oldie)	1	negative	0.9748495817184448	Transaction Performance	2025-05-22
661	2	bugs	3	negative	0.9988303780555724	Transaction Performance	2025-04-07
662	2	well app	5	positive	0.9993765950202942	User Interface & Experience	2025-04-20
663	2	its good and simple to use	5	positive	0.9998610019683838	Feature Requests	2025-05-02
664	2	Bezabih (bezabih)	5	positive	0.622971773147583	Transaction Performance	2025-06-04
665	2	Nice!	5	positive	0.999863862991333	Customer Support	2025-05-30
666	2	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	negative	0.9983141422271729	Transaction Performance	2025-05-31
667	2	it's very good 👍 app (it's very good 👍 app)	5	positive	0.9998462200164796	Account Access Issues	2025-04-27
668	2	Very excellent (ممتاز جدا)	5	positive	0.9997058510780334	Transaction Performance	2025-05-04
669	2	CBE very good apps	5	positive	0.9998394250869752	Account Access Issues	2025-03-31
670	2	Every month is asking me for silver and what your parents have been able to say (በየወሩ አፕደት እየጠየቀኝ ነው ለነገሩ ብር ስሌለኝ ይሆናል እና ምን ለማለት ፈልገ መሰላቹ ወላህ ቼግሮኛል 🥺🥺🥺)	3	positive	0.906617283821106	Transaction Performance	2025-04-01
671	2	why did this app is not screenshot	5	negative	0.9989493489265442	User Interface & Experience	2025-04-12
672	2	it's a good application 👍	5	positive	0.9998123049736024	Account Access Issues	2025-05-21
673	2	it is smart app but it has stoped after some period of time on my device with out any reason .	5	negative	0.9961044788360596	Transaction Performance	2025-05-25
674	2	perfect app	5	positive	0.9998340606689452	User Interface & Experience	2025-04-07
675	2	the app is very good, but why screenshots is impossible?	5	negative	0.981265127658844	Account Access Issues	2025-03-31
676	2	it's genuine app..	5	positive	0.9998555183410645	User Interface & Experience	2025-03-24
677	2	tank's	5	negative	0.9855977892875672	Transaction Performance	2025-04-25
678	2	Best	5	positive	0.9997941851615906	Transaction Performance	2025-05-26
679	2	excellent match application (excellent match application)	5	positive	0.9998106360435486	Transaction Performance	2025-03-31
680	2	Nice service	5	positive	0.9998397827148438	Customer Support	2025-04-15
681	2	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	positive	0.9998189806938172	Transaction Performance	2025-04-04
682	2	Really! this app is more simple to use at any time in every where also it's transaction quality between the users within the transaction receipt as abank that means this app is our bank on hand in mobile frankly I proud on this bank digital. I have no word to wrote ...... but it's have weakness on poor connection.	5	negative	0.9962796568870544	Transaction Performance	2025-03-31
683	2	what is this app problem???	1	negative	0.9996225833892822	User Interface & Experience	2025-06-05
684	2	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	negative	0.9973511695861816	Transaction Performance	2025-04-04
685	2	Good apps ...But fix the screenshot its not easy like before ......	5	negative	0.9470353722572328	Feature Requests	2025-03-29
686	2	the most annoying mobile banking app I've ever seen	1	negative	0.9994208812713624	User Interface & Experience	2025-05-20
687	2	wow keep up	5	positive	0.9998539686203004	Transaction Performance	2025-04-10
688	2	Very very excellent (ممتاز جدا جدا)	5	positive	0.999714195728302	Transaction Performance	2025-03-24
689	2	Plus Bank (lebaa bank)	5	positive	0.5933048725128174	Transaction Performance	2025-04-14
690	2	I need support you	5	negative	0.9881442785263062	Transaction Performance	2025-04-27
691	2	amazing (amazing)	5	positive	0.9998841285705566	Transaction Performance	2025-05-20
692	2	OK	5	positive	0.9997851252555848	Transaction Performance	2025-04-13
693	2	ok	1	positive	0.9997851252555848	Transaction Performance	2025-05-24
694	2	Ronaldo 🇵🇹 🥇 (Ronaldo 🇵🇹 🥇)	5	positive	0.9918049573898317	Transaction Performance	2025-05-25
695	2	it,s good app and time manager 👍	5	positive	0.999837040901184	Account Access Issues	2025-05-30
696	2	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	negative	0.9986600875854492	Transaction Performance	2025-04-02
697	2	because sometimes it doesn't working it load too much	3	negative	0.9911932349205016	Transaction Performance	2025-04-17
698	2	best apps for useing (best apps for useing)	5	positive	0.9990205764770508	Account Access Issues	2025-03-30
699	2	Awesome bank	5	positive	0.99984610080719	Transaction Performance	2025-06-01
700	2	excellent app (excellent app)	5	positive	0.9997753500938416	User Interface & Experience	2025-03-31
701	2	Quick efficient (ፈጣን ቀልጣፋ)	5	positive	0.9996680021286012	Transaction Performance	2025-04-10
702	2	satisfied	5	positive	0.9997212290763856	Transaction Performance	2025-04-03
703	2	a very nice app.👍👍👍 (a very nice app.👍👍👍)	5	positive	0.9997331500053406	Customer Support	2025-04-01
704	2	not bad not good	1	negative	0.9715348482131958	Account Access Issues	2025-05-02
705	2	It's the best apple (ምርጥ አፕ ነው ተመችቶኛል❤❤)	3	positive	0.9998459815979004	Transaction Performance	2025-03-31
706	2	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	negative	0.9975224137306212	Transaction Performance	2025-05-05
707	2	Fantastic (Fantastic)	5	positive	0.9998822212219238	Transaction Performance	2025-05-23
708	2	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	negative	0.9984410405158995	User Interface & Experience	2025-05-06
709	2	the pride of Ethiopian bank 🏦	5	positive	0.999118983745575	Transaction Performance	2025-05-08
710	2	not functional	1	negative	0.999778687953949	Transaction Performance	2025-06-05
711	2	I like it	4	positive	0.99985933303833	Transaction Performance	2025-05-23
712	2	good give us plus (good give us plus)	5	positive	0.9998680353164672	Transaction Performance	2025-04-01
713	2	it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring	2	negative	0.998119294643402	Transaction Performance	2025-06-04
714	2	fast and reliable	5	positive	0.9998595714569092	Feature Requests	2025-05-02
715	2	🤬🤬🤬🤬 network 🛜 (🤬🤬🤬🤬 network 🛜)	1	negative	0.9454458355903624	Transaction Performance	2025-05-26
716	2	Convenient app (Convenient app)	5	positive	0.965578019618988	User Interface & Experience	2025-03-27
717	2	Amazing app	5	positive	0.9998670816421508	User Interface & Experience	2025-03-31
718	2	grateful app	5	positive	0.9998038411140442	User Interface & Experience	2025-04-13
719	2	the most useful	5	positive	0.9997223019599916	Transaction Performance	2025-04-01
720	2	simple&fast!!!	5	positive	0.9997504353523254	Transaction Performance	2025-03-30
721	2	very very nice aplication	1	positive	0.9998292922973632	Customer Support	2025-04-08
722	2	great app	5	positive	0.999821126461029	User Interface & Experience	2025-04-15
723	2	very interesting app i am using every day fantastic	5	positive	0.9998443126678468	Transaction Performance	2025-04-14
724	2	suitable app	4	positive	0.9997665286064148	User Interface & Experience	2025-04-01
725	2	The latest update prevents taking screenshots, which is really annoying! please allow us to take screenshots! we need it for evidence (particularly, in case of transfer failure!).	1	negative	0.9977697134017944	Transaction Performance	2025-03-27
726	2	best app to experience him that to smooth transaction among the customers	1	positive	0.9985142350196838	Transaction Performance	2025-04-05
727	2	to getting money	5	positive	0.8595288395881653	Transaction Performance	2025-03-23
728	2	Fantastic app! I appreciate it very much	5	positive	0.9998745918273926	User Interface & Experience	2025-03-27
729	2	Tnc Cbe (Tnc Cbe)	5	positive	0.5679802298545837	Transaction Performance	2025-04-01
730	2	Isin (isin ga'a)	2	negative	0.806994616985321	Transaction Performance	2025-04-02
731	2	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	positive	0.9998784065246582	Account Access Issues	2025-04-17
732	2	it's the best app i	5	positive	0.999834418296814	Account Access Issues	2025-05-02
733	2	nice	5	positive	0.9998552799224854	Customer Support	2025-05-26
734	2	100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏 (100% ❤️❤️❤️🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏🙏)	5	positive	0.9883312582969666	Transaction Performance	2025-04-13
735	2	i like it	5	positive	0.99985933303833	Transaction Performance	2025-04-18
736	2	very good 👍 👏 (very good 👍 👏)	5	positive	0.9997866749763488	Account Access Issues	2025-03-31
737	2	best banking App	4	positive	0.999736487865448	Account Access Issues	2025-04-03
738	2	Amazing applicatiom sometimes doesnt work!	5	negative	0.6448792815208435	Transaction Performance	2025-05-18
739	2	None (👍)	5	negative	0.99668151140213	Transaction Performance	2025-05-24
740	2	really am happy to this app it is Siple to use everything	5	positive	0.9988697171211244	Feature Requests	2025-06-07
741	2	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	negative	0.9997394680976868	Transaction Performance	2025-05-25
742	2	I hate this app 😒	1	negative	0.9996378421783448	User Interface & Experience	2025-05-22
743	2	great	5	positive	0.9998630285263062	Transaction Performance	2025-04-15
744	2	lower system everything	3	negative	0.9993475079536438	Transaction Performance	2025-05-30
745	2	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	positive	0.9997400641441344	Feature Requests	2025-04-03
746	2	easy to use helpful in my life	5	positive	0.9981144666671752	Feature Requests	2025-05-21
747	2	good App	5	positive	0.9998493194580078	Account Access Issues	2025-03-31
748	2	amazing app I am used this app for one year	4	positive	0.9991408586502076	User Interface & Experience	2025-05-24
749	2	what an amazing application in Ethiopian Banking industry which is very interested one!	5	positive	0.9997572302818298	Transaction Performance	2025-03-31
750	2	perfect	5	positive	0.9998517036437988	Transaction Performance	2025-04-03
751	2	I like it.	5	positive	0.999869465827942	Transaction Performance	2025-04-07
752	2	Best Mobile Banking app ever (Best Mobile Banking app ever)	5	positive	0.9997374415397644	Account Access Issues	2025-06-04
753	2	easy to use and user friendly	5	positive	0.9979179501533508	Feature Requests	2025-03-31
754	2	very nice 👌 app for android phone	5	positive	0.9994401335716248	Customer Support	2025-05-21
755	2	Smart	5	positive	0.9998456239700316	Transaction Performance	2025-04-01
756	2	the best	5	positive	0.9998332262039183	Account Access Issues	2025-04-28
757	2	very good and safe for me!	5	positive	0.9998769760131836	Transaction Performance	2025-03-31
758	2	it's very useful	5	positive	0.9997983574867249	Transaction Performance	2025-03-23
759	2	i miss the old one i couldn't send my mony to other bank..	1	negative	0.995843231678009	Transaction Performance	2025-05-06
760	2	Excellent (Excellent)	5	positive	0.99985933303833	Transaction Performance	2025-03-31
761	2	Great experience so far but why this app ain't working while developer mode is on?	4	negative	0.9967141151428224	Transaction Performance	2025-03-24
762	2	It's good (ጥሩ ነው አንዳንዴ ስታክ ቢያደርግም)	4	positive	0.9998664855957032	Transaction Performance	2025-03-31
763	2	commerial Bank	5	negative	0.6810263991355896	Transaction Performance	2025-04-06
764	2	good app	5	positive	0.9998493194580078	Account Access Issues	2025-05-24
765	2	in this update why screenshoot is disabled now it's not working	1	negative	0.9996315240859984	Transaction Performance	2025-03-28
766	2	mortuary app	5	negative	0.7924914360046387	User Interface & Experience	2025-05-25
767	2	Igested (ጠጀጨገጀ።ጀገ)	5	negative	0.930857241153717	Transaction Performance	2025-04-26
768	2	always CBE is the leading Commercial Bank💪💪💪 (always CBE is the leading Commercial Bank💪💪💪)	5	positive	0.988057255744934	Transaction Performance	2025-04-18
769	2	Hooo I love this application	5	positive	0.9998517036437988	Transaction Performance	2025-03-22
770	2	Actually it is inactive	4	negative	0.9996483325958252	Transaction Performance	2025-04-19
771	2	best appearance	5	positive	0.9996986389160156	Account Access Issues	2025-04-27
772	2	wow	4	positive	0.999592125415802	Transaction Performance	2025-05-24
773	2	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	positive	0.9998852014541626	Transaction Performance	2025-05-25
774	2	there is some issue the process it delay	3	negative	0.9957571625709534	Transaction Performance	2025-03-31
775	2	work on screen shot system	4	negative	0.5902693867683411	Transaction Performance	2025-04-08
776	2	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	negative	0.9551453590393066	Customer Support	2025-04-05
777	2	it is not safety	1	negative	0.9997867941856384	Transaction Performance	2025-06-03
778	2	The Best app😍😍😍 (The Best app😍😍😍)	5	positive	0.9998496770858764	Account Access Issues	2025-03-31
779	2	worest app like that bank for security and network access	1	negative	0.9927296042442322	Transaction Performance	2025-05-02
780	2	wow.......cbe.....keep it up.....!!!!!!	5	positive	0.998596966266632	Transaction Performance	2025-04-01
781	2	why removing screenshot feature why?	1	negative	0.9981147050857544	Transaction Performance	2025-04-18
782	2	The best of the best (እጅግ በጣም ጥሩ አፕ)	5	positive	0.999847412109375	Account Access Issues	2025-04-01
783	2	very good, keep it up	5	positive	0.9998643398284912	Account Access Issues	2025-03-31
784	2	cool ❤ (cool ❤)	4	positive	0.9995455145835876	Transaction Performance	2025-04-04
785	2	CBE	5	positive	0.9966009855270386	Transaction Performance	2025-03-31
786	2	okay 👍 but sometimes busy	1	negative	0.8515539765357971	Transaction Performance	2025-05-03
787	2	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	positive	0.9976927042007446	Transaction Performance	2025-05-07
788	2	Very good app. but disappointed by general cessation of system.	5	negative	0.998118817806244	Account Access Issues	2025-05-02
789	2	like it	5	positive	0.9997184872627258	Transaction Performance	2025-03-29
790	2	it is reliable and easy to use.	5	positive	0.9998389482498168	Feature Requests	2025-05-20
791	2	why why u remove screen shoot😡😡	2	negative	0.9993287324905396	Transaction Performance	2025-03-26
792	2	This app is good, and we are using it well	1	positive	0.999855637550354	Account Access Issues	2025-05-21
793	2	very good, but sometimes....	4	positive	0.9997310042381288	Account Access Issues	2025-03-31
794	2	Can't scan/recognize other banks' Interoperable QR Codes	1	negative	0.9983273148536682	Transaction Performance	2025-04-13
795	2	The fastest transferring app I ever had its so reliable	5	positive	0.9844427704811096	Feature Requests	2025-05-11
796	2	Screenshot or slip not working	2	negative	0.9997146725654602	Transaction Performance	2025-03-22
797	2	The Egigida kebe terr (Engida Kebede Fetera)	5	negative	0.9826481938362122	Transaction Performance	2025-06-03
798	2	slow, only one account is used	2	negative	0.9997527003288268	Transaction Performance	2025-04-19
799	2	very busy I don't know why... I prefer 889	3	negative	0.9991938471794128	Transaction Performance	2025-05-22
800	2	well satisfied with this beautiful app	5	positive	0.999858856201172	User Interface & Experience	2025-05-18
801	3	waw	5	negative	0.7346176505088806	Transaction Performance	2025-04-28
802	3	waw no idea the best app.	5	negative	0.9923464059829712	Transaction Performance	2025-04-19
803	3	Very good app that like it too. B/c it is very fast and easy to use.	5	positive	0.9998027682304382	Feature Requests	2025-03-26
804	3	always lagging (always lagging)	1	negative	0.9997764229774476	Transaction Performance	2025-05-16
805	3	Game changer (Game changer)	5	positive	0.9707226753234864	Transaction Performance	2025-05-13
806	3	great	4	positive	0.9998630285263062	Transaction Performance	2025-04-26
807	3	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	positive	0.9953939914703368	Feature Requests	2025-04-21
808	3	all of dashen bank customers use the application it is good to use	5	positive	0.9958037734031676	Feature Requests	2025-02-01
809	3	why dashen bank workers hidden my ATM Card 🏧?it's a big problem to me	5	negative	0.999297022819519	Transaction Performance	2025-04-04
810	3	Best	5	positive	0.9997941851615906	Transaction Performance	2025-03-20
811	3	Excellent and user friendly App. Excellence is what makes you always one step ahead. Dashen Bank, Always One Step Ahead !!	5	positive	0.9998682737350464	Transaction Performance	2025-01-16
812	3	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	negative	0.9997708201408386	Transaction Performance	2025-04-25
813	3	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	negative	0.9983522891998292	Transaction Performance	2025-03-08
814	3	Yea , it's a good idea to make it with the bank name, it will help for the bank easily to find the application, and customers can easily downloed and use the product. I wish all the best for Dashen bank initiative.	5	positive	0.7550317645072937	Transaction Performance	2025-01-15
815	3	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it now—you won’t regret it!	5	positive	0.9996484518051147	Feature Requests	2025-04-21
816	3	The new mobile banking application is a major upgrade! It’s incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. It’s clear a lot of thought went into the user experi	5	positive	0.9992745518684388	Transaction Performance	2025-04-21
817	3	I appreciate that Dashen Bank takes lifestyle services into account.	5	positive	0.9980393052101136	Transaction Performance	2025-04-21
818	3	it's samart	5	positive	0.9992457628250122	Transaction Performance	2025-04-10
819	3	this app better than Amole . but the biometric on new update doesn't work	4	negative	0.999607503414154	Transaction Performance	2025-05-31
820	3	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must say—it’s truly a game-changer! The app is incredibly fast and reliable; I’ve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	positive	0.9993189573287964	Feature Requests	2025-04-21
821	3	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	positive	0.9995176792144777	User Interface & Experience	2025-05-03
822	3	Faster and userfriendly	5	positive	0.9199286103248596	Feature Requests	2025-01-14
823	3	Add the option to send money to any telebirr account like amole does.	3	negative	0.995681881904602	Transaction Performance	2025-03-08
824	3	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	negative	0.9996039271354676	Transaction Performance	2025-04-09
825	3	It good and easy to use	5	positive	0.9998750686645508	Feature Requests	2025-03-11
826	3	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	positive	0.9937819838523864	Feature Requests	2025-02-14
827	3	This super app is a total game-changer—fast, reliable, and packed with everything I need in one place. It’s seamless and super convenient. Love it!"	5	positive	0.9998038411140442	Feature Requests	2025-04-23
828	3	Best- in-class app.	5	positive	0.999584972858429	Account Access Issues	2025-04-21
829	3	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	positive	0.9997468590736388	Transaction Performance	2025-04-21
830	3	None (👍👍👍)	5	negative	0.99668151140213	Transaction Performance	2025-05-28
831	3	Excellent app. (Excellent app.)	5	positive	0.9997844099998474	User Interface & Experience	2025-04-21
832	3	fast &Friendly user Application.	5	positive	0.9993237257003784	Feature Requests	2025-04-22
833	3	I like this mobile banking app very much. Overall user interface and navigation is awesome. But it lacks instant response when someone deposit or withdraw money.	2	negative	0.9904449582099916	Transaction Performance	2025-06-07
1053	3	All good we need more	3	positive	0.9996538162231444	Account Access Issues	2025-01-31
834	3	The user experience is seamless, and everything just works perfectly right out of the box. I can’t believe how much time and effort it saves me every day.	5	positive	0.9997797608375548	Transaction Performance	2025-04-21
835	3	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	positive	0.9897825717926024	Transaction Performance	2025-03-31
836	3	thanks for all digital transaction	5	positive	0.9994550347328186	Transaction Performance	2025-03-21
837	3	it seems me logging out within minutes	1	negative	0.9982207417488098	Transaction Performance	2025-05-03
838	3	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	negative	0.9995891451835632	Transaction Performance	2025-02-11
839	3	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	negative	0.9993688464164734	Transaction Performance	2025-04-24
840	3	Now, one step has been raised (አሁን ገና አንድ እርምጃ ቀደማችው)	5	positive	0.9839789867401124	Transaction Performance	2025-02-04
841	3	If the Applesser was cool, the Teleber was only for yourself and the old (አፕልኬሽኑ አሪፍ ሆኖ ሳለ ቴሌብር ወደራስ ብቻ ለምን ሆነ እንደ ድሮው ለሰውም መላክ ቢቻል)	4	negative	0.9977045655250548	Transaction Performance	2025-02-22
842	3	Pro max (Pro max)	5	positive	0.9859548211097716	Transaction Performance	2025-01-17
843	3	The new e-commerce feature is incredibly amazing and user friendly.	5	positive	0.9998598098754884	Transaction Performance	2025-04-21
844	3	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	positive	0.9998248219490052	Transaction Performance	2025-04-21
845	3	making transactions has never been easier. the new update is just amazing	5	positive	0.9998310804367064	Feature Requests	2025-04-22
846	3	It's good but well should be checked (ጥሩ ነው ግን በደንብ ሊሸሻል ይገባል)	4	positive	0.9233025312423706	Transaction Performance	2025-02-13
847	3	it is not as good as to the other mobile bank app.	1	negative	0.999786913394928	Account Access Issues	2025-05-22
848	3	Best app.	5	positive	0.999774158000946	Account Access Issues	2025-01-16
849	3	An app with High performance and advanced features!	5	positive	0.9995831847190856	Transaction Performance	2025-04-21
850	3	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	positive	0.9991750121116638	Feature Requests	2025-04-21
851	3	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience – highly recommended!	5	positive	0.9997962117195128	Feature Requests	2025-04-21
852	3	it is good but some times says duplicate transaction why?	5	negative	0.9836630821228028	Transaction Performance	2025-05-24
853	3	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	positive	0.9997945427894592	Transaction Performance	2025-04-21
854	3	Good	4	positive	0.999816119670868	Account Access Issues	2025-05-13
855	3	Really the app looks like amazing. I can't wait to activate in the morning.	5	positive	0.9997010827064514	User Interface & Experience	2025-01-14
856	3	Always one step forward	5	positive	0.999639630317688	Transaction Performance	2025-01-15
857	3	wowslnwoooo wowwww amazing !!!!!!!!	5	positive	0.999722182750702	Transaction Performance	2025-04-28
858	3	Its slow when i try to see the Recent Transaction and stucked	1	negative	0.9992387294769288	Transaction Performance	2025-04-28
859	3	awesome app keep going	5	positive	0.9998502731323242	User Interface & Experience	2025-05-14
860	3	it's Be Come Busy &not working good	1	negative	0.999382257461548	Transaction Performance	2025-03-20
861	3	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	negative	0.985798954963684	Customer Support	2025-05-03
862	3	dashen super app is simple faster and reliable.	5	positive	0.999518632888794	Feature Requests	2025-04-21
863	3	dashen bank or dashen super app? (dashen bank or dashen super app?)	1	negative	0.9952180981636048	Feature Requests	2025-05-17
864	3	Dashen Super App isn’t just an app — it’s an experience. Effortless, powerful, and built for the future	5	positive	0.9997283816337584	User Interface & Experience	2025-04-21
865	3	Gret experience (Gret experience)	5	negative	0.8995018005371094	Transaction Performance	2025-02-01
866	3	Dashen supper App is the most useful app for our customers	5	positive	0.9988586902618408	User Interface & Experience	2025-04-21
867	3	Waw Great and innovated,user friendly, always one step ahead	5	positive	0.999778687953949	Transaction Performance	2025-01-13
868	3	Betam Mrt Ena Betam Le Atikakem Kelel Yale Ena Michu Application NW (betam mirt Ena betam le atikakem kelel Yale Ena michu application nw)	5	negative	0.9970312118530272	Transaction Performance	2025-04-22
869	3	wowwwe app	5	positive	0.9829692840576172	User Interface & Experience	2025-05-17
870	3	Hey great	5	positive	0.999745786190033	Transaction Performance	2025-03-12
871	3	Nice	5	positive	0.9998552799224854	Customer Support	2025-04-16
872	3	it was amazing app.....thank you dashen bank....	5	positive	0.9998608827590942	User Interface & Experience	2025-01-30
873	3	very nice	5	positive	0.9998563528060912	Customer Support	2025-04-26
874	3	very comfortable app keep it	5	positive	0.999691367149353	User Interface & Experience	2025-04-21
875	3	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	positive	0.9974797368049622	Feature Requests	2025-04-21
876	3	Massive upgrade from the Amole app.	5	positive	0.9646421074867249	User Interface & Experience	2025-05-31
877	3	what a helpful app!!!!	5	positive	0.9990901947021484	User Interface & Experience	2025-05-13
878	3	This is the best banking app ever. I recommend everyone to use it.	5	positive	0.9997599720954896	Feature Requests	2025-04-23
879	3	Small size with vast features and functionalities.	5	positive	0.9981461763381958	Transaction Performance	2025-01-15
880	3	Second to Oher Bank is not working in intersection to Addisintelynignation to Addis Ababa and second (Send to oher bank የሚለዉ ዉስጥ ገብተን ወደ addisinternational bank ለመላክ አይሰራም ሁለተኛ ደግሞ ወደ cbe birr ለመላክ account number ይጠይቃል ሞባይል ነበር ነዉ መጠየቅ ያለበት ይመስለኛል)	2	negative	0.9994068145751952	Transaction Performance	2025-01-29
881	3	I love it but it has bugs during confirmation of password! So, please make it functional	5	positive	0.98050457239151	Transaction Performance	2025-01-15
882	3	Amazing (Amazing)	5	positive	0.9998841285705566	Transaction Performance	2025-01-20
883	3	Perfect	5	positive	0.9998517036437988	Transaction Performance	2025-02-02
884	3	wow	5	positive	0.999592125415802	Transaction Performance	2025-06-03
885	3	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	positive	0.999617338180542	Feature Requests	2025-05-26
886	3	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	positive	0.9992392063140868	Feature Requests	2025-04-21
887	3	Dashen Super App is a game-changer! It’s fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	positive	0.9998010993003844	Feature Requests	2025-04-21
888	3	Applause 👏 Dashen Bank. One of the best super app inorder to pay easily and securely. One step a head.	5	positive	0.9996860027313232	Transaction Performance	2025-01-14
889	3	great app	5	positive	0.999821126461029	User Interface & Experience	2025-04-30
890	3	Excellent (Excellent)	5	positive	0.99985933303833	Transaction Performance	2025-03-10
891	3	Superb	5	positive	0.9998656511306764	Transaction Performance	2025-04-21
892	3	Really super app... so seamless and with a nice user interface .. we are proud of you dashen bank ...	5	positive	0.9998613595962524	Transaction Performance	2025-01-15
893	3	its features are so dynamic	5	positive	0.999643087387085	Transaction Performance	2025-04-22
894	3	This is the worst mobile banking experience I’ve ever had. It doesn’t work when you need it, and it randomly updates itself without warning. You can’t make transactions whenever you want. It’s a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. I’m lucky I’m not one of them, but still, it’s infuriating not being able to access your money when you need it."l	1	negative	0.9996976852416992	Transaction Performance	2025-04-07
895	3	the best Supper App ever	5	positive	0.999849796295166	Account Access Issues	2025-04-22
896	3	All in One	5	positive	0.9988051652908324	Transaction Performance	2025-01-14
897	3	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	negative	0.9992289543151855	Transaction Performance	2025-04-16
898	3	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	positive	0.999531626701355	Feature Requests	2025-04-21
899	3	it is best app easy to use	5	positive	0.9864110350608826	Feature Requests	2025-04-01
900	3	Amazing app 👏 👌 Dashen bank one step a head	5	positive	0.9995114803314208	User Interface & Experience	2025-01-15
901	3	it's good (ጥሩ ነው)	5	positive	0.9998713731765748	Transaction Performance	2025-03-25
902	3	fast best app (fast best app)	5	positive	0.9995200634002686	Account Access Issues	2025-04-19
903	3	why do i have to change a pin number i use my finger print so dummy	1	negative	0.9994646906852722	Transaction Performance	2025-04-27
904	3	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	positive	0.999815046787262	Feature Requests	2025-04-22
905	3	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	positive	0.9991613626480104	Transaction Performance	2025-04-21
906	3	nice application	5	positive	0.9998229146003724	Customer Support	2025-05-27
907	3	dashen super app is secure band very easy	5	positive	0.9899651408195496	Feature Requests	2025-04-29
908	3	The best App of all	5	positive	0.9998633861541748	Account Access Issues	2025-03-17
909	3	very good for this app	5	positive	0.9998138546943665	Account Access Issues	2025-05-31
910	3	very useful App	1	positive	0.9995785355567932	User Interface & Experience	2025-05-26
911	3	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	positive	0.9981801509857178	Transaction Performance	2025-04-21
912	3	Dashen yichalal. Ewnetem one step a head	5	negative	0.983262538909912	Transaction Performance	2025-01-17
913	3	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	positive	0.9711759686470032	User Interface & Experience	2025-01-20
914	3	Wow amazing app	5	positive	0.9998513460159302	User Interface & Experience	2025-02-21
915	3	Needs some improvement	5	negative	0.998008668422699	Transaction Performance	2025-01-20
916	3	Excellent app (Excellent app)	5	positive	0.9997753500938416	User Interface & Experience	2025-02-24
917	3	Well developed (Well developed)	5	positive	0.9998509883880616	Transaction Performance	2025-01-14
918	3	It does not work functional ,	1	negative	0.9997901320457458	Transaction Performance	2025-02-02
919	3	faster than this version	5	positive	0.9991979002952576	Feature Requests	2025-05-01
920	3	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	positive	0.9996446371078492	Transaction Performance	2025-04-24
921	3	The speed is too slow. Need some improvements.	2	negative	0.9997935891151428	Transaction Performance	2025-03-06
922	3	So far so good! their in person customer service is amazing 👏	5	positive	0.9998642206192015	Transaction Performance	2025-04-14
923	3	I don't know what happens but the application is not send verification pass code you should fix that	1	negative	0.9973721504211426	Transaction Performance	2025-02-16
924	3	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	positive	0.9817668795585632	User Interface & Experience	2025-04-21
925	3	This is the best app ever, when is it planned to include digital lending and gasification?	5	positive	0.9990382194519044	Transaction Performance	2025-04-22
926	3	useless app ever loading take long	1	negative	0.9997350573539734	User Interface & Experience	2025-05-27
927	3	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	negative	0.9997294545173644	Transaction Performance	2025-04-07
928	3	its best	5	positive	0.9998121857643129	Account Access Issues	2025-05-23
929	3	Ok	5	positive	0.9997851252555848	Transaction Performance	2025-02-02
930	3	Better and inclusive app!	5	positive	0.999285876750946	User Interface & Experience	2025-04-21
931	3	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	positive	0.9998507499694824	Feature Requests	2025-02-06
932	3	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. It’s clear a lot of thought went into the design and functionality. Great job!	5	positive	0.9998260140419006	Transaction Performance	2025-04-21
933	3	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	positive	0.9995104074478148	Feature Requests	2025-04-21
934	3	goood	5	negative	0.9943867921829224	Transaction Performance	2025-04-02
935	3	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	positive	0.9984980821609496	Transaction Performance	2025-03-12
936	3	Easy to use and has many options. It is the best financial app I have ever used.	5	positive	0.9997546076774596	Feature Requests	2025-04-21
937	3	Too best (Too best)	1	positive	0.9745374917984008	Account Access Issues	2025-04-21
938	3	Nice App	5	positive	0.9998061060905457	Customer Support	2025-04-18
939	3	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!😥	1	negative	0.9958034157752992	Transaction Performance	2025-04-14
940	3	A game-changing Ethiopian innovation—where shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	positive	0.9993858337402344	Transaction Performance	2025-04-21
941	3	It has a great application features from the beginning. I'm glad to use it even I haven't used it yet because I haven't activated my account yet. But it's simple, comprehensive, full of information, and fast. በርቱ ዳሸኖች: The super app has impressed me more than I expected.	5	positive	0.999612033367157	Feature Requests	2025-01-15
942	3	Dashen bank app is very good, but sometimes it is not working well	5	negative	0.9976341724395752	Account Access Issues	2025-05-15
943	3	what an App	5	positive	0.9938238859176636	User Interface & Experience	2025-04-21
944	3	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	negative	0.9960646033287048	Transaction Performance	2025-02-24
945	3	Dashin Bank is Hudnadan Bank Thank you for you, Muaz Abamecha Abamilki from Aggaaro Town, Jimma District (Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki)	5	negative	0.9811505675315856	Transaction Performance	2025-02-07
946	3	To join digital world use supper app and make your life easy	5	positive	0.987091064453125	Feature Requests	2025-04-21
947	3	It's my choice (ምርጫዬ ነው)	5	positive	0.998295247554779	Transaction Performance	2025-04-13
948	3	Best App	5	positive	0.999686598777771	Account Access Issues	2025-05-02
949	3	Dashen bank is my number one choice	5	positive	0.9996331930160522	Transaction Performance	2025-04-22
950	3	ALWAYS ONE STEP AHEAD	5	positive	0.9997699856758118	Transaction Performance	2025-01-14
951	3	Good actually , but it have to WORK when developer option is on 🙏	5	negative	0.9746389389038086	Transaction Performance	2025-04-21
952	3	good	4	positive	0.999816119670868	Account Access Issues	2025-05-31
953	3	Always one step a head!	5	positive	0.9981322884559632	Transaction Performance	2025-01-15
954	3	Good app, bad security	3	positive	0.989300549030304	User Interface & Experience	2025-02-06
955	3	It keep my time to pay my bills and I generate my satment easily	5	positive	0.996675968170166	Transaction Performance	2025-04-21
956	3	Wow	5	positive	0.999592125415802	Transaction Performance	2025-05-30
957	3	A Good and fast supper app thanks for dashen bank	5	positive	0.999788463115692	Feature Requests	2025-04-21
958	3	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	positive	0.999284565448761	Transaction Performance	2025-04-22
959	3	Incomparably user-friendly and fast app for mobile banking.	5	negative	0.9392759799957277	User Interface & Experience	2025-04-24
960	3	convenient and fast	5	positive	0.9996170997619628	Feature Requests	2025-04-21
961	3	perfect	5	positive	0.9998517036437988	Transaction Performance	2025-04-03
962	3	Dashen Bank Always One Step Ahead! (Dashen Bank Always One Step Ahead!)	5	positive	0.9993836879730223	Transaction Performance	2025-01-15
963	3	I really like this amazing application and Dashen Supper app that has made my life easier.	5	positive	0.9997171759605408	Feature Requests	2025-04-21
964	3	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	negative	0.99936181306839	Transaction Performance	2025-04-04
965	3	Excellent UI/UX and beyond Banking services👍👍	5	positive	0.9995208978652954	Transaction Performance	2025-01-30
966	3	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	positive	0.9998281002044678	Feature Requests	2025-04-21
967	3	It's an amazing app, experience it!!	5	positive	0.9998760223388672	User Interface & Experience	2025-04-23
968	3	it is the most amazing mobile app	5	positive	0.9998717308044434	User Interface & Experience	2025-04-21
969	3	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	positive	0.999881148338318	Transaction Performance	2025-04-21
970	3	the chat banking and unique and only app that alow money request!!	5	negative	0.9822685718536376	User Interface & Experience	2025-04-21
971	3	it is very good app	5	positive	0.9998699426651	Account Access Issues	2025-04-10
972	3	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	positive	0.9998323917388916	Transaction Performance	2025-04-22
973	3	best of best	5	positive	0.9997496008872986	Account Access Issues	2025-04-29
974	3	Very convenient (Very convenient)	5	positive	0.996904194355011	Transaction Performance	2025-04-21
975	3	#dashen super app is easy to use, secure & fast transaction😍	5	positive	0.9874821901321412	Feature Requests	2025-04-22
976	3	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	positive	0.9998795986175536	Transaction Performance	2025-04-21
977	3	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone 💯 👌👍	5	positive	0.9994206428527832	User Interface & Experience	2025-01-22
978	3	i love this app esp 3 click that make e-commerce easier and convinient.	5	positive	0.9995126724243164	Feature Requests	2025-04-22
979	3	It's great! But it will be advanced if you include a caption that allow customers to transfer to Telebirr account. Dashen Bank, "ኩሉ ግዜ፡ ሓደ ስጕሚ ቀዳሚ።" (Always one step ahead!) (It's great! But it will be advanced if you include a caption that allow customers to transfer to Telebirr account. Dashen Bank, "ኩሉ ግዜ፡ ሓደ ስጕሚ ቀዳሚ።" (Always one step ahead!))	4	positive	0.9990552067756652	Transaction Performance	2025-01-15
980	3	best app I have ever seen	5	positive	0.9996102452278136	Account Access Issues	2025-04-29
981	3	very Nice	5	positive	0.9998563528060912	Customer Support	2025-05-23
982	3	its my choice	5	positive	0.9962010979652404	Transaction Performance	2025-05-15
983	3	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	positive	0.9998557567596436	Transaction Performance	2025-04-21
984	3	This app has everything I was looking for, dashen is becoming a grandmaster.	5	positive	0.9995651841163636	User Interface & Experience	2025-04-21
985	3	this is what we expect to get service Dashen Bank always like his slogan	5	negative	0.8835351467132568	Transaction Performance	2025-04-21
986	3	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,I’ve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	negative	0.9068744778633118	User Interface & Experience	2025-04-21
987	3	It is very fast and secured mobile banking app! I like this app!	5	positive	0.9995939135551452	User Interface & Experience	2025-04-29
988	3	App That makes Difference!	5	positive	0.9998338222503662	User Interface & Experience	2025-01-14
989	3	Wow Excellent app	5	positive	0.9998443126678468	User Interface & Experience	2025-03-08
990	3	very disappointing app. Closes frequently and unstable in function	2	negative	0.9997677206993104	Transaction Performance	2025-04-17
991	3	On Transaction page only show sent Transaction. Try to include received transaction.	4	negative	0.9956958293914796	Transaction Performance	2025-02-06
992	3	The most good app and easy	5	positive	0.9998631477355956	Account Access Issues	2025-01-16
993	3	wawwwww what nice super app !!keep it up dashen bank !!	5	positive	0.9991359114646912	Customer Support	2025-04-21
994	3	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	positive	0.8947898149490356	Feature Requests	2025-04-21
995	3	Naiycapp	5	positive	0.8075184226036072	Transaction Performance	2025-03-14
996	3	it is incredible product.	5	positive	0.9998867511749268	Transaction Performance	2025-04-23
997	3	Just Wow	5	positive	0.999775230884552	Transaction Performance	2025-01-29
998	3	I loved it	5	positive	0.9998809099197388	Transaction Performance	2025-02-05
999	3	A lightweight,catchy and smooth app	5	positive	0.998709201812744	User Interface & Experience	2025-01-15
1000	3	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platform—such as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	positive	0.9997934699058532	Transaction Performance	2025-04-21
1001	3	Always one step ahead	5	positive	0.9997699856758118	Transaction Performance	2025-01-13
1002	3	It is so far so good it has a unique features than telebirr good job Dashen	5	positive	0.9998282194137572	Account Access Issues	2025-01-15
1003	3	easiness to use with fast response time	5	negative	0.9647259712219238	Feature Requests	2025-04-21
1004	3	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	positive	0.9998725652694702	Feature Requests	2025-01-24
1005	3	Proud to be dashen family . Shout out to the serial entrepreneur 👏	5	positive	0.9998549222946168	Transaction Performance	2025-01-16
1006	3	good app	5	positive	0.9998493194580078	Account Access Issues	2025-03-04
1007	3	It's best	5	positive	0.999842643737793	Account Access Issues	2025-03-08
1008	3	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	positive	0.9994187355041504	User Interface & Experience	2025-04-21
1009	3	wow apo	5	positive	0.99947851896286	Transaction Performance	2025-05-15
1010	3	wow to it saff and this app	5	positive	0.998571276664734	User Interface & Experience	2025-05-30
1011	3	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	negative	0.9997894167900084	Transaction Performance	2025-03-14
1054	3	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	positive	0.9731149673461914	Transaction Performance	2025-04-22
1055	3	Waw, It's amazing app. thank you Dashen Bank.	5	positive	0.99986732006073	User Interface & Experience	2025-03-31
1012	3	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	positive	0.9990044236183168	Feature Requests	2025-04-21
1013	3	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	positive	0.9998522996902466	Transaction Performance	2025-03-06
1014	3	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	positive	0.9994714856147766	Transaction Performance	2025-04-22
1015	3	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	positive	0.9998038411140442	Transaction Performance	2025-04-21
1016	3	I am so thankful for having this best app Dashen one step ahead	5	positive	0.999471127986908	Transaction Performance	2025-02-04
1017	3	Amazing super app (Amazing super app)	5	positive	0.9998329877853394	User Interface & Experience	2025-01-19
1018	3	Name only (ስም ብቻ 😏)	2	negative	0.9410245418548584	Transaction Performance	2025-01-21
1019	3	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	positive	0.9997891783714294	Transaction Performance	2025-04-21
1020	3	Great!	5	positive	0.9998692274093628	Transaction Performance	2025-01-15
1021	3	It's a very cool app. I have becomegotten. (በጣም አሪፍ መተግበሪያ ነው ። አመሠግናለሁ ።)	5	positive	0.9996547698974608	Transaction Performance	2025-03-10
1022	3	Truly, db => AlwaysOneStepAhead !! (Truly, db => AlwaysOneStepAhead !!)	5	negative	0.9989332556724548	Transaction Performance	2025-01-14
1023	3	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	positive	0.9995073080062866	Feature Requests	2025-02-26
1024	3	First ATM in East africa ⭐️⭐️⭐️⭐️⭐️ (First ATM in East africa ⭐️⭐️⭐️⭐️⭐️)	5	positive	0.9851300716400146	Transaction Performance	2025-01-16
1025	3	Exellent app with exellent banking system and exellent bank ever	5	negative	0.9579959511756896	User Interface & Experience	2025-01-21
1026	3	All in one, that is it 👌	5	positive	0.8945446610450745	Transaction Performance	2025-04-21
1027	3	Very impressive interface with best security feature and user friendly app.	5	positive	0.9997988343238832	Transaction Performance	2025-01-15
1028	3	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement 👏👏👏	5	positive	0.999527096748352	User Interface & Experience	2025-04-21
1029	3	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	positive	0.9997382760047911	User Interface & Experience	2025-04-21
1030	3	best mobile banking application	5	positive	0.9996380805969238	Transaction Performance	2025-04-21
1031	3	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	positive	0.9985912442207336	Feature Requests	2025-04-21
1032	3	The best Banking app I have ever seen	5	positive	0.9997634291648864	Account Access Issues	2025-01-14
1033	3	Took (መቸሸጠ)	5	positive	0.6394249200820923	Transaction Performance	2025-06-03
1034	3	The app is not working properly, I have been using it.	1	negative	0.999715268611908	User Interface & Experience	2025-04-10
1035	3	Dashen Super App gives me an amazing convenience and makes life easy.	5	positive	0.999823272228241	Feature Requests	2025-04-21
1036	3	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	positive	0.9990429282188416	Transaction Performance	2025-04-21
1037	3	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	negative	0.9981010556221008	Transaction Performance	2025-04-07
1038	3	the worst app in the market only good ui	1	negative	0.9997721314430236	User Interface & Experience	2025-03-22
1039	3	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	positive	0.9996517896652222	Transaction Performance	2025-05-22
1040	3	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	positive	0.9998537302017212	Feature Requests	2025-04-21
1041	3	The speed is very cool! And it's light! However, it's good to include more to Teleber's Senior Shipping Apple. (ፍጥነቱ በጣም አሪፍ ነው! እና ቀለል ያለ ነው ! ነገር ግን ተጨማሪ ወደ ቴሌብር ኤጀንት መላኪያ አፕ ቢካተትበት ጥሩ ነው::)	4	positive	0.9996683597564696	Transaction Performance	2025-02-12
1042	3	nic app	5	positive	0.9797857403755188	User Interface & Experience	2025-04-16
1043	3	why does it ask me for both pin and opt even the opt is touch let alone both	2	negative	0.9958769083023072	Transaction Performance	2025-04-02
1044	3	good and latest	5	positive	0.9998561143875122	Transaction Performance	2025-03-18
1045	3	With the kegza app has the same new one's kemjh keme clamp (Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam)	5	negative	0.9972302317619324	User Interface & Experience	2025-02-06
1046	3	I only see white page	2	negative	0.9910238981246948	Transaction Performance	2025-01-23
1047	3	tanku	5	negative	0.9159650802612304	Transaction Performance	2025-04-04
1048	3	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	positive	0.9995538592338562	User Interface & Experience	2025-04-21
1049	3	wow appl	5	positive	0.9994691014289856	Transaction Performance	2025-04-28
1050	3	Wly Super App ilove it ❤️ 😍 💖 💕 (Wly Super App ilove it ❤️ 😍 💖 💕)	5	negative	0.9798948168754578	User Interface & Experience	2025-01-18
1051	3	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	negative	0.9983357787132264	Transaction Performance	2025-05-18
1052	3	execellent (execellent)	5	negative	0.987398624420166	Transaction Performance	2025-04-24
1056	3	best platform... Please avoid otp	5	positive	0.9228947758674622	Transaction Performance	2025-02-21
1057	3	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	positive	0.9991500377655028	User Interface & Experience	2025-04-21
1058	3	From the (ከጰነጨየጠ)	2	positive	0.6813768744468689	Transaction Performance	2025-02-26
1059	3	super 😎	5	positive	0.9331682920455932	Feature Requests	2025-05-13
1060	3	Great App Well done Dashen Bank (Great App Well done Dashen Bank)	5	positive	0.9995104074478148	User Interface & Experience	2025-01-15
1061	3	Dashen bank always one step ahead	5	positive	0.9996015429496764	Transaction Performance	2025-04-30
1062	3	All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!! (All in One ✍️secure ✍️reliable ✍️convenient. Digital banking game changer!!)	5	negative	0.9846974611282348	Transaction Performance	2025-04-23
1063	3	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	negative	0.9994447827339172	Transaction Performance	2025-04-04
1064	3	A truly impressive app — user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in Ethiopia’s financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	positive	0.9998193383216858	Transaction Performance	2025-04-21
1065	3	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	positive	0.9943593144416808	Feature Requests	2025-04-21
1066	3	it too slow	3	negative	0.9996801614761353	Transaction Performance	2025-05-29
1067	3	Fantastic (Fantastic)	5	positive	0.9998822212219238	Transaction Performance	2025-05-16
1068	3	The best app ever in finance sector	5	positive	0.9998089671134948	Account Access Issues	2025-05-18
1069	3	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	positive	0.9995062351226808	Transaction Performance	2025-04-21
1070	3	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work 🤝👏	5	positive	0.9997472167015076	Transaction Performance	2025-04-21
1071	3	Wonderful Application 😍 (Wonderful Application 😍)	5	positive	0.9998321533203124	Transaction Performance	2025-02-05
1072	3	U can't create account	1	negative	0.9984429478645324	Transaction Performance	2025-01-15
1073	3	nice app ever (nice app ever)	5	positive	0.9995536208152772	Customer Support	2025-04-17
1074	3	Fast, Reliable and User Friendly. Keep it Up	5	positive	0.9997664093971252	Feature Requests	2025-04-22
1075	3	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	positive	0.9991555213928224	Transaction Performance	2025-05-10
1076	3	proud by dashen bank	5	positive	0.9998666048049928	Transaction Performance	2025-04-06
1077	3	best 👍👍 (best 👍👍)	5	positive	0.9997110962867736	Account Access Issues	2025-02-16
1078	3	One star deducted for not to able to transfer to telebirr.	4	negative	0.9903808236122132	Transaction Performance	2025-02-13
1079	3	keep it up!	5	positive	0.9998477697372437	Transaction Performance	2025-04-21
1080	3	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	positive	0.9992207288742064	Transaction Performance	2025-05-14
1081	3	Amazing APLICATION, But it's a PIN, that it's PIN, it has a PIN, all the time the transcript of translation must be PIN. But when the speech was wrong, 5 Star makes it possible. (የሚገርም aplication ነው, ነገር ግን ብር ትራንስፈር ሲደረግ ያለ ፒን መሆኑ risk አለው ሁሉ ጊዜ የ ትራንስፈር መደምደሚያ ፒን መሆን አለበት!!!!!!!!!!!!:: አሱ ቢስተካከል 5 star አስከዛው ግን 4 ሰጥቻለው::)	4	positive	0.9923216700553894	Transaction Performance	2025-02-09
1082	3	Wow! like his name Super App...	5	positive	0.9985873699188232	User Interface & Experience	2025-04-21
1083	3	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	positive	0.9655694961547852	Transaction Performance	2025-03-10
1084	3	wallahi very fantastic Bank	5	positive	0.999818742275238	Transaction Performance	2025-03-31
1085	3	Dashen super app is easy to use, fast and robust	5	positive	0.9997517466545104	Feature Requests	2025-01-31
1086	3	The Gada (gadaa)	5	negative	0.898414134979248	Transaction Performance	2025-06-01
1087	3	nice app	5	positive	0.9998061060905457	Customer Support	2025-03-29
1088	3	“Life-changing!” I can’t imagine going back to traditional banking after using this app. It’s so convenient.	5	positive	0.9968047142028807	User Interface & Experience	2025-01-17
1089	3	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ። ("Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ዳሸን ባንክ አንድ እርምጃ ቀዳሚ።)	5	positive	0.9996638298034668	Feature Requests	2025-04-22
1090	3	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	positive	0.99978905916214	Feature Requests	2025-04-14
1091	3	V good ❗️ (V good ❗️)	5	positive	0.9844632148742676	Account Access Issues	2025-01-24
1092	3	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	positive	0.999481737613678	Transaction Performance	2025-04-21
1093	3	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	positive	0.9964408278465272	Feature Requests	2025-04-21
1094	3	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	positive	0.9990369081497192	Feature Requests	2025-04-22
1095	3	Fantastic app	5	positive	0.999858856201172	User Interface & Experience	2025-03-01
1096	3	I love it. one of the best mobile banking app in the banking industry	5	positive	0.999868392944336	User Interface & Experience	2025-04-21
1097	3	Best UI mobile banking app, props to design team	5	positive	0.9991565942764282	User Interface & Experience	2025-04-30
1098	3	nice	5	positive	0.9998552799224854	Customer Support	2025-05-13
1099	3	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	negative	0.9994332194328308	Transaction Performance	2025-05-17
1100	3	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	negative	0.9997400641441344	Transaction Performance	2025-03-20
1101	3	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	positive	0.9998156428337096	Transaction Performance	2025-04-21
1102	3	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	positive	0.9967933297157288	Transaction Performance	2025-01-17
1103	3	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	negative	0.9939862489700316	Transaction Performance	2025-05-20
1104	3	It doesn't work	1	negative	0.9997813105583192	Transaction Performance	2025-02-07
1105	3	It's bad for the connection and too many days are it that not working	1	negative	0.9996840953826904	Transaction Performance	2025-04-12
1106	3	too slow to use.	1	negative	0.9997276663780212	Feature Requests	2025-03-26
1107	3	no one dashen yichlal	5	negative	0.9842472076416016	Transaction Performance	2025-03-07
1108	3	easy &,simple to use	5	positive	0.9968307614326476	Feature Requests	2025-04-21
1109	3	Fastest and easy to use	5	positive	0.9997114539146424	Feature Requests	2025-01-22
1110	3	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. It’s saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	positive	0.9982413053512572	Transaction Performance	2025-04-21
1111	3	thank you	4	positive	0.9998352527618408	Transaction Performance	2025-04-30
1112	3	Super Easy To Use and Fast Transaction.	5	positive	0.996877908706665	Feature Requests	2025-04-21
1113	3	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	positive	0.99827241897583	Feature Requests	2025-04-21
1114	3	top	5	positive	0.9997069239616394	Transaction Performance	2025-05-31
1115	3	bad.	1	negative	0.9997698664665222	Transaction Performance	2025-04-30
1116	3	No good	1	negative	0.9996987581253052	Account Access Issues	2025-02-22
1117	3	real life changer (real life changer)	5	positive	0.999578058719635	Transaction Performance	2025-05-28
1118	3	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchants—proud to back an Ethiopian-made solution!	5	positive	0.9998247027397156	Transaction Performance	2025-04-21
1119	3	None (👍)	5	negative	0.99668151140213	Transaction Performance	2025-05-14
1120	3	Always one step ahead! What a masterpiece.	5	positive	0.9998708963394164	Transaction Performance	2025-01-16
1121	3	Best app	5	positive	0.999686598777771	Account Access Issues	2025-02-04
1122	3	I love this app	5	positive	0.9998608827590942	User Interface & Experience	2025-04-21
1123	3	The app is good but it ask update every week so tiring	2	negative	0.9951795339584352	User Interface & Experience	2025-03-11
1124	3	Amizing Application 😍 (Amizing Application 😍)	5	negative	0.9929181933403016	Transaction Performance	2025-01-22
1125	3	Is really 💀	2	positive	0.9858712553977966	Transaction Performance	2025-04-08
1126	3	DASHEEUNSUPER APP is: The Most Speed ​​Specieral. It is different !!!! (Dashen supper app is the most special. ይምቾቱ ይለያያል!!!!)	5	positive	0.9939477443695068	User Interface & Experience	2025-04-21
1127	3	amazing features, faster and easy to use	5	positive	0.9998817443847656	Feature Requests	2025-04-21
1128	3	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	positive	0.9977291226387024	Feature Requests	2025-02-26
1129	3	Better Move to catch the competition up👍	5	positive	0.9914565682411194	Transaction Performance	2025-01-16
1130	3	It is very easy to use and powerful application.	3	positive	0.9997655749320984	Feature Requests	2025-04-01
1131	3	Wow dashen super app 🚀🚀 (Wow Dashen Super App 🚀🚀)	5	positive	0.9924174547195436	User Interface & Experience	2025-01-14
1132	3	oh nice!!! i wish it's very nice app	5	positive	0.9996349811553956	Customer Support	2025-01-14
1133	3	Super smart app.	5	positive	0.9997984766960144	User Interface & Experience	2025-02-18
1134	3	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isn’t performing as expected. I hope this can be addressed soon to improve the user experience. One star 🌟 for now.	1	negative	0.9980534315109252	Transaction Performance	2025-03-19
1135	3	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	positive	0.9981945157051086	Transaction Performance	2025-04-21
1136	3	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	positive	0.9996839761734008	Transaction Performance	2025-04-21
1137	3	Totally amazing	5	positive	0.9998782873153688	Transaction Performance	2025-05-13
1138	3	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	negative	0.9980541467666626	Transaction Performance	2025-04-21
1139	3	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	positive	0.9998030066490172	Transaction Performance	2025-04-21
1140	3	it's amazing app i have seen ever	5	positive	0.9998574256896972	User Interface & Experience	2025-02-13
1141	3	best experiences (best experiences)	5	positive	0.9991538524627686	Account Access Issues	2025-03-26
1142	3	Convenient! (Convenient!)	5	negative	0.9624378085136414	Transaction Performance	2025-04-22
1143	3	its the best ever	5	positive	0.9998552799224854	Account Access Issues	2025-05-09
1144	3	love	3	positive	0.9998735189437866	Transaction Performance	2025-06-06
1145	3	fast	5	positive	0.9989494681358336	Feature Requests	2025-05-12
1146	3	Very easy and Fast.	5	positive	0.9995487332344056	Feature Requests	2025-04-24
1147	3	excellent mobile banking app	5	positive	0.9998179078102112	User Interface & Experience	2025-04-21
1148	3	Amazing Application... (Amazing Application...)	5	positive	0.999881386756897	Transaction Performance	2025-05-16
1149	3	nic	5	positive	0.9977141618728638	Transaction Performance	2025-03-22
1150	3	It is the best application!!!	5	positive	0.9998468160629272	Account Access Issues	2025-04-22
1151	3	Dashen bank super app for easy life.	5	positive	0.7723072171211243	Feature Requests	2025-01-30
1152	3	Amazing app super easy to use and best design. loved it.	5	positive	0.9998630285263062	Feature Requests	2025-05-09
1153	3	Is not working	1	negative	0.9997809529304504	Transaction Performance	2025-01-25
1154	3	A very scrolling AP Burtle for use for use (በጣም ቅልል ያለ አፕ በርቱልን ለአጠቃቀም ምቹ)	5	negative	0.9881324172019958	Feature Requests	2025-03-22
1155	3	best	5	positive	0.9997941851615906	Transaction Performance	2025-04-06
1156	3	Dash Banking identifies (ዳሽን ባንክ ይለያል)	4	negative	0.8669745922088623	Transaction Performance	2025-05-28
1157	3	Simple, Fast and Easy ⭐⭐⭐🎉 (Simple, Fast and Easy ⭐⭐⭐🎉)	4	positive	0.9981608986854552	Feature Requests	2025-02-10
1158	3	ok	5	positive	0.9997851252555848	Transaction Performance	2025-04-23
1159	3	Worst app ever (Worst app ever)	1	negative	0.9997822642326356	User Interface & Experience	2025-03-15
1160	3	very easy and flexible app.	5	positive	0.9997106194496156	Feature Requests	2025-04-21
1161	3	Not good this app	1	negative	0.9997790455818176	Account Access Issues	2025-02-04
1162	3	It looks good and simple to use	5	positive	0.9998189806938172	Feature Requests	2025-01-14
1163	3	thanks again	5	positive	0.9998217225074768	Transaction Performance	2025-04-21
1164	3	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	negative	0.9974337220191956	Transaction Performance	2025-02-14
1165	3	This is My Bank!	5	positive	0.9968095421791076	Transaction Performance	2025-01-15
1166	3	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	positive	0.99981027841568	Feature Requests	2025-02-07
1167	3	real super up (real super up)	5	positive	0.9995478987693788	Transaction Performance	2025-04-04
1168	3	excellent game changer App (excellent game changer App)	5	positive	0.9997785687446594	User Interface & Experience	2025-05-08
1169	3	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	positive	0.99988055229187	Transaction Performance	2025-01-17
1170	3	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	positive	0.9966461062431335	Transaction Performance	2025-05-12
1171	3	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	positive	0.9997954964637756	Transaction Performance	2025-04-21
1172	3	A fantastic product!! keep the good work.	5	positive	0.9998842477798462	Transaction Performance	2025-04-21
1173	3	It's Best waww 🙏	5	positive	0.999744474887848	Account Access Issues	2025-01-13
1174	3	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	positive	0.9974090456962584	Feature Requests	2025-04-21
1175	3	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. It’s fast, secure, and truly reflects the bank’s commitment to digital excellence. Highly recommended!	5	positive	0.999748170375824	Feature Requests	2025-04-21
1176	3	yes i want dashen super open (yes i want dashen super open)	5	positive	0.9977310299873352	Transaction Performance	2025-05-02
1177	3	To be honest, best banking and lifestyle app in Ethiopia.	5	positive	0.9997262358665466	User Interface & Experience	2025-05-12
1178	3	The first 3 star review is me	3	positive	0.9967767596244812	Transaction Performance	2025-01-25
1179	3	slow cumbersome	3	negative	0.9997989535331726	Transaction Performance	2025-04-08
1180	3	this apps have a good feature but but some features like developer mode turn off irritate user	3	negative	0.997230589389801	Transaction Performance	2025-04-01
1181	3	Wawww	5	negative	0.9418039321899414	Transaction Performance	2025-05-24
1182	3	Keep up the good work and pleas add water and electric utility payment	5	positive	0.9986761212348938	Transaction Performance	2025-02-12
1183	3	it's a hestorical app. in the bank industry.	5	negative	0.9915915727615356	User Interface & Experience	2025-04-21
1184	3	The app is good but it has no USSD option	4	negative	0.9952346682548524	Account Access Issues	2025-03-13
1185	3	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	positive	0.999062716960907	Feature Requests	2025-04-21
1186	3	We will see it	2	positive	0.9998630285263062	Transaction Performance	2025-01-15
1187	3	I wish dark mode feature is add as an option but it's good app	5	positive	0.9998013377189636	Transaction Performance	2025-02-27
1188	3	mobile banking to the next level	5	positive	0.9409880042076112	Transaction Performance	2025-01-28
1189	3	I’ve been using the Dashen Bank Super App for a while now, and it’s been a game-changer. The app is super fast and reliable—I’ve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	positive	0.9992021918296814	Feature Requests	2025-03-28
1190	3	Amazing and user friendly supper app and looking forward the additional features	5	positive	0.9998486042022704	User Interface & Experience	2025-02-14
1191	3	Amazing Application (Amazing Application)	5	positive	0.9998735189437866	Transaction Performance	2025-04-21
1192	3	one of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experie	5	positive	0.9995588660240172	Transaction Performance	2025-04-21
1193	3	It's an amazing app that is up-to-date with the times, wow wow	5	positive	0.999868392944336	User Interface & Experience	2025-04-21
1194	3	I hope it will be better than amole	5	positive	0.9969701766967772	Transaction Performance	2025-01-18
1195	3	Great for everyday banking and payments on the go	5	positive	0.9998255372047424	Transaction Performance	2025-04-22
1196	3	Great job my home, my bank.	5	positive	0.9998712539672852	Transaction Performance	2025-01-16
1197	3	I'm really impressed with this app! It’s user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	positive	0.9997783303260804	Transaction Performance	2025-04-23
1198	3	Excellent app ever but it needs improvement on speed and transaction lists	1	negative	0.990936815738678	Transaction Performance	2025-02-03
1199	3	Best App!	5	positive	0.9997498393058776	Account Access Issues	2025-04-21
1200	3	One of the best digital platforms I’ve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	positive	0.9997860789299012	Transaction Performance	2025-04-21
\.


--
-- Name: banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_id_seq', 3, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1200, true);


--
-- Name: banks banks_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_name_key UNIQUE (name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_bank_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_fkey FOREIGN KEY (bank) REFERENCES public.banks(id);


--
-- PostgreSQL database dump complete
--

