GO
    CREATE DATABASE Entrevista;
GO

USE Entrevista;

GO

CREATE TABLE Departamento (
    Id  INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Estado BIT DEFAULT(1)
);

GO

CREATE TABLE Posicion (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Estado BIT DEFAULT(1)
)

GO

CREATE TABLE Cliente (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Tel_Personal VARCHAR(100) NOT NULL,
    Tel_Compania VARCHAR(100) NOT NULL,
    Email_Personal VARCHAR(100) NOT NULL,
    Email_Compania VARCHAR(100) NOT NULL,
    PosicionId INT NOT NULL,
    DepartamentoId INT NOT NULL,
    Estado BIT DEFAULT(1),
    FOREIGN KEY (PosicionId) REFERENCES Posicion (Id)
)

GO

INSERT INTO Departamento (Nombre) VALUES ('Accountability');
INSERT INTO Departamento (Nombre) VALUES ('Accounts');
INSERT INTO Departamento (Nombre) VALUES ('Applications');
INSERT INTO Departamento (Nombre) VALUES ('Assurance');
INSERT INTO Departamento (Nombre) VALUES ('Brand');
INSERT INTO Departamento (Nombre) VALUES ('Branding');
INSERT INTO Departamento (Nombre) VALUES ('Communications');
INSERT INTO Departamento (Nombre) VALUES ('Creative');
INSERT INTO Departamento (Nombre) VALUES ('Data');
INSERT INTO Departamento (Nombre) VALUES ('Directives');
INSERT INTO Departamento (Nombre) VALUES ('Divisions');
INSERT INTO Departamento (Nombre) VALUES ('Factors');
INSERT INTO Departamento (Nombre) VALUES ('Functionality');
INSERT INTO Departamento (Nombre) VALUES ('Group');
INSERT INTO Departamento (Nombre) VALUES ('Identity');
INSERT INTO Departamento (Nombre) VALUES ('Implementation');
INSERT INTO Departamento (Nombre) VALUES ('Infrastructure');
INSERT INTO Departamento (Nombre) VALUES ('Integration');
INSERT INTO Departamento (Nombre) VALUES ('Intranet');
INSERT INTO Departamento (Nombre) VALUES ('Markets');
INSERT INTO Departamento (Nombre) VALUES ('Metrics');
INSERT INTO Departamento (Nombre) VALUES ('Mobility');
INSERT INTO Departamento (Nombre) VALUES ('Operations');
INSERT INTO Departamento (Nombre) VALUES ('Optimization');
INSERT INTO Departamento (Nombre) VALUES ('Paradigm');
INSERT INTO Departamento (Nombre) VALUES ('Program');
INSERT INTO Departamento (Nombre) VALUES ('Research');
INSERT INTO Departamento (Nombre) VALUES ('Response');
INSERT INTO Departamento (Nombre) VALUES ('Security');
INSERT INTO Departamento (Nombre) VALUES ('Solutions');
INSERT INTO Departamento (Nombre) VALUES ('Tactics');
INSERT INTO Departamento (Nombre) VALUES ('Usability');
INSERT INTO Departamento (Nombre) VALUES ('Web');
INSERT INTO Departamento (Nombre) VALUES ('Marketing');
INSERT INTO Departamento (Nombre) VALUES ('Division');
INSERT INTO Departamento (Nombre) VALUES ('Quality');
INSERT INTO Departamento (Nombre) VALUES ('Configuration');
INSERT INTO Departamento (Nombre) VALUES ('Interactions');
GO

INSERT INTO Posicion (Nombre) VALUES ('Associate Front End Design Professional');
INSERT INTO Posicion (Nombre) VALUES ('Black Belt User Centered Design Architect');
INSERT INTO Posicion (Nombre) VALUES ('Central Data Consultant');
INSERT INTO Posicion (Nombre) VALUES ('Central Functionality Director');
INSERT INTO Posicion (Nombre) VALUES ('Central Interactions Director');
INSERT INTO Posicion (Nombre) VALUES ('Central Usability Developer');
INSERT INTO Posicion (Nombre) VALUES ('Chief Configuration Specialist');
INSERT INTO Posicion (Nombre) VALUES ('Chief Content God');
INSERT INTO Posicion (Nombre) VALUES ('Chief Data Producer');
INSERT INTO Posicion (Nombre) VALUES ('Chief Human Factors Champion');
INSERT INTO Posicion (Nombre) VALUES ('Chief User Experience Hero');
INSERT INTO Posicion (Nombre) VALUES ('Chief User Interface Champion');
INSERT INTO Posicion (Nombre) VALUES ('Corporate Applications Associate');
INSERT INTO Posicion (Nombre) VALUES ('Corporate Communications Representative');
INSERT INTO Posicion (Nombre) VALUES ('Customer Applications Specialist');
INSERT INTO Posicion (Nombre) VALUES ('District Functionality Director');
INSERT INTO Posicion (Nombre) VALUES ('District Tactics Analyst');
INSERT INTO Posicion (Nombre) VALUES ('Dynamic Division Agent');
INSERT INTO Posicion (Nombre) VALUES ('Dynamic Identity Designer');
INSERT INTO Posicion (Nombre) VALUES ('Dynamic Implementation Liason');
INSERT INTO Posicion (Nombre) VALUES ('Dynamic Implementation Technician');
INSERT INTO Posicion (Nombre) VALUES ('Dynamic Intranet Associate');
INSERT INTO Posicion (Nombre) VALUES ('Forward Creative Analyst');
INSERT INTO Posicion (Nombre) VALUES ('Future Markets Developer');
INSERT INTO Posicion (Nombre) VALUES ('Future Web Orchestrator');
INSERT INTO Posicion (Nombre) VALUES ('Global Mobility Manager');
INSERT INTO Posicion (Nombre) VALUES ('Heavyweight User Interface Champion');
INSERT INTO Posicion (Nombre) VALUES ('Human Directives Director');
INSERT INTO Posicion (Nombre) VALUES ('Human Group Technician');
INSERT INTO Posicion (Nombre) VALUES ('Human Mobility Designer');
INSERT INTO Posicion (Nombre) VALUES ('Internal Assurance Architect');
INSERT INTO Posicion (Nombre) VALUES ('Internal Brand Supervisor');
INSERT INTO Posicion (Nombre) VALUES ('Internal Group Planner');
INSERT INTO Posicion (Nombre) VALUES ('International Program Architect');
INSERT INTO Posicion (Nombre) VALUES ('Investor Accounts Director');
INSERT INTO Posicion (Nombre) VALUES ('Investor Brand Consultant');
INSERT INTO Posicion (Nombre) VALUES ('Investor Tactics Specialist');
INSERT INTO Posicion (Nombre) VALUES ('Lead Quality Architect');
INSERT INTO Posicion (Nombre) VALUES ('Lead Tactics Supervisor');
INSERT INTO Posicion (Nombre) VALUES ('Legacy Accountability Analyst');
INSERT INTO Posicion (Nombre) VALUES ('Legacy Identity Designer');
INSERT INTO Posicion (Nombre) VALUES ('Legacy Optimization Producer');
INSERT INTO Posicion (Nombre) VALUES ('National Communications Liason');
INSERT INTO Posicion (Nombre) VALUES ('National Infrastructure Consultant');
INSERT INTO Posicion (Nombre) VALUES ('National Mobility Associate');
INSERT INTO Posicion (Nombre) VALUES ('Principal Functionality Coordinator');
INSERT INTO Posicion (Nombre) VALUES ('Principal Mobile IxD Extraordinaire');
INSERT INTO Posicion (Nombre) VALUES ('Product Implementation Assistant');
INSERT INTO Posicion (Nombre) VALUES ('Product Paradigm Administrator');
INSERT INTO Posicion (Nombre) VALUES ('Regional Division Facilitator');
INSERT INTO Posicion (Nombre) VALUES ('Regional Factors Associate');
INSERT INTO Posicion (Nombre) VALUES ('National Infrastructure Engineer');

GO

INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Chancellor G.', 'English', 30, 7, 'pharetra@malesuadavelvenenatis.edu', 'Proin@quis.co.uk', '1-552-415-9347', '(204) 963-2345');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Madeson X.', 'Perez', 26, 8, 'vitae.sodales@orci.co.uk', 'accumsan@interdumfeugiatSed.ca', '1-218-701-1732', '(228) 552-0187');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Akeem B.', 'Golden', 5, 47, 'leo@lectus.co.uk', 'habitant.morbi.tristique@odioPhasellus.com', '1-592-600-0222', '(278) 479-1495');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kerry M.', 'Wiley', 29, 8, 'ut.quam@arcuSed.com', 'arcu@Donecporttitor.ca', '1-726-829-0417', '(345) 360-1251');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Nero K.', 'Burton', 27, 1, 'lacus@pedeultricesa.org', 'risus@consectetueradipiscingelit.edu', '1-673-688-7512', '(238) 250-7778');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Buffy M.', 'Wong', 34, 2, 'auctor.ullamcorper.nisl@aliquetsemut.com', 'ipsum.leo.elementum@eu.co.uk', '1-617-583-6140', '(965) 132-8148');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Montana E.', 'Gallagher', 10, 27, 'sed.dui@placeratvelit.ca', 'libero.lacus@Duissit.edu', '1-379-630-1307', '(910) 202-6899');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Althea K.', 'Jensen', 16, 10, 'egestas.blandit@Lorem.net', 'nonummy.Fusce@mollislectuspede.co.uk', '1-752-765-7349', '(469) 637-5280');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Nelle Y.', 'Copeland', 18, 11, 'interdum.Curabitur.dictum@parturientmontesnascetur.org', 'eget.lacus@malesuadaut.net', '1-693-276-6613', '(576) 439-1463');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Hanna O.', 'Guy', 13, 12, 'nibh@sagittisplaceratCras.co.uk', 'tincidunt@etcommodo.ca', '1-103-770-8055', '(799) 604-2476');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Alexis J.', 'Sosa', 28, 9, 'Nulla@diam.edu', 'pede.nonummy.ut@Nuncsollicitudincommodo.com', '1-269-240-7076', '(137) 562-2221');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Mary N.', 'Dickerson', 25, 6, 'sed.libero.Proin@fringillacursus.net', 'erat.vitae@blandit.org', '1-979-149-7101', '(847) 170-3865');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Glenna C.', 'Merritt', 31, 40, 'in.molestie.tortor@dapibusligulaAliquam.com', 'mattis.velit.justo@nullaIntegervulputate.ca', '1-681-662-6711', '(528) 557-2108');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Dakota I.', 'Blake', 15, 33, 'augue@sitamet.org', 'Duis@nibh.net', '1-253-521-5358', '(303) 135-1171');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Jasmine Q.', 'Shaffer', 20, 52, 'ac@lobortis.net', 'Quisque@posuereat.co.uk', '1-861-925-5176', '(589) 990-7155');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Patrick J.', 'Mcfarland', 14, 3, 'Suspendisse.dui.Fusce@augue.com', 'non.nisi@tristique.net', '1-320-771-5363', '(362) 433-9915');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Emily L.', 'Stokes', 35, 24, 'Nam.ac@volutpatNullafacilisis.net', 'Aenean.euismod.mauris@eratSed.org', '1-682-846-4791', '(134) 424-4773');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Cheryl B.', 'Berg', 3, 22, 'Cras.interdum.Nunc@SuspendissesagittisNullam.edu', 'Nam.nulla@eratSed.net', '1-891-538-4487', '(929) 477-0191');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Chaim C.', 'Sanford', 24, 4, 'Donec@Cum.org', 'urna.convallis.erat@dui.ca', '1-329-274-0433', '(571) 282-0938');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Amaya L.', 'Hopkins', 23, 19, 'vel@sagittissemperNam.ca', 'Aliquam@sodales.edu', '1-158-463-8975', '(193) 393-6831');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Freya B.', 'Nieves', 17, 37, 'mattis@risusDonec.net', 'augue.eu.tellus@dictumeuplacerat.edu', '1-627-907-6576', '(905) 474-7874');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('TaShya F.', 'Anderson', 19, 17, 'ullamcorper.nisl@quamvelsapien.co.uk', 'Nunc.sed.orci@volutpat.com', '1-822-698-3584', '(221) 699-3383');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kimberly R.', 'Gutierrez', 7, 45, 'eu.dui@cursusnon.net', 'bibendum.sed.est@ultricessitamet.net', '1-306-241-9822', '(981) 924-7601');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Gail U.', 'Jacobson', 33, 25, 'elit.pretium.et@atpretium.edu', 'Donec.feugiat@magnaatortor.com', '1-386-584-7036', '(238) 615-6281');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Aretha T.', 'Rutledge', 6, 50, 'a.facilisis@auctorveliteget.ca', 'penatibus.et@Donecatarcu.org', '1-413-793-1544', '(416) 988-8996');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Otto B.', 'Jordan', 36, 48, 'ipsum.sodales@sempererat.edu', 'venenatis.vel@semmagna.net', '1-947-363-7078', '(767) 657-4149');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Claudia L.', 'Walsh', 4, 5, 'erat.neque.non@nibhDonec.org', 'fringilla@sit.com', '1-148-329-0167', '(822) 664-0669');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Brenda V.', 'House', 22, 32, 'in.hendrerit.consectetuer@a.org', 'sagittis.Duis@quislectus.ca', '1-598-499-0782', '(139) 546-1375');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Clark D.', 'Juarez', 2, 46, 'amet.faucibus@mollisPhasellus.ca', 'nascetur@dignissim.ca', '1-115-123-9433', '(587) 291-8433');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Mariam V.', 'Sanders', 9, 36, 'cursus@eleifendvitae.ca', 'libero.mauris@semper.com', '1-683-978-3031', '(740) 935-2720');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kibo X.', 'Hart', 8, 26, 'id.nunc.interdum@Praesenteu.net', 'vitae.semper@purusgravidasagittis.com', '1-419-340-6570', '(764) 391-4978');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Simone P.', 'Oneill', 37, 30, 'parturient@Loremipsum.net', 'Nunc.sollicitudin@anuncIn.edu', '1-905-961-7774', '(203) 443-0327');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Uma C.', 'Kent', 1, 35, 'tempus.risus@Etiamligulatortor.com', 'Praesent.interdum.ligula@ligula.net', '1-873-951-6036', '(471) 784-9634');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Pamela T.', 'Preston', 38, 49, 'blandit.at@egetmassaSuspendisse.edu', 'sem@diamPellentesquehabitant.co.uk', '1-294-364-6383', '(562) 968-3151');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Suki Q.', 'Clements', 12, 51, 'Praesent.interdum.ligula@CraspellentesqueSed.net', 'vel.vulputate@atiaculisquis.edu', '1-298-751-5962', '(268) 109-5187');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Petra J.', 'Pennington', 32, 41, 'mauris.ipsum@Fusce.edu', 'augue.eu.tellus@arcu.ca', '1-970-120-7514', '(424) 475-2529');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Veda U.', 'Rivera', 21, 29, 'diam@nuncacmattis.org', 'ut.mi.Duis@volutpatNullafacilisis.net', '1-199-174-2184', '(522) 148-3471');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Colton X.', 'Santos', 14, 42, 'dui.Suspendisse.ac@mi.net', 'eu@dictumplacerat.net', '1-435-856-7010', '(325) 169-8816');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Phoebe K.', 'Cash', 35, 34, 'Aliquam@molestie.co.uk', 'ante.iaculis@Curabiturconsequat.co.uk', '1-274-854-9562', '(179) 167-1253');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Marvin K.', 'Mcintyre', 3, 39, 'eget.mollis.lectus@litora.org', 'eu.nulla.at@Sed.co.uk', '1-795-290-8116', '(212) 934-4610');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Alyssa Y.', 'Strong', 24, 21, 'a@vehiculaPellentesque.com', 'Nam.porttitor@ullamcorper.com', '1-742-834-9951', '(244) 690-7016');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Yardley U.', 'Holman', 23, 14, 'Morbi.quis@malesuada.edu', 'ornare.egestas@sitamet.co.uk', '1-691-181-5020', '(480) 560-6200');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Angela T.', 'Greene', 17, 20, 'egestas@sitametorci.net', 'ligula@etrisus.ca', '1-893-944-2580', '(637) 690-5009');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Risa I.', 'Copeland', 19, 28, 'parturient.montes.nascetur@nibh.com', 'eu.metus.In@vestibulumMaurismagna.net', '1-252-677-4837', '(597) 657-6468');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Sean N.', 'Evans', 7, 23, 'dui.nec.urna@etmagnisdis.edu', 'consequat.nec@magnanecquam.net', '1-124-862-1481', '(236) 901-5808');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Freya B.', 'Whitehead', 33, 38, 'dui@Duis.co.uk', 'Mauris.molestie.pharetra@feugiatnon.ca', '1-171-495-1175', '(865) 924-0079');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Bradley P.', 'Sellers', 6, 15, 'Donec@Namconsequat.net', 'fames@amet.co.uk', '1-468-989-6373', '(976) 476-1779');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Fuller J.', 'Albert', 36, 31, 'amet.ante.Vivamus@mi.com', 'mi.pede@Phasellus.net', '1-876-840-5893', '(430) 248-9419');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Rhiannon A.', 'Whitfield', 6, 43, 'ante.Maecenas.mi@vehicula.edu', 'Nunc@molestiesodalesMauris.net', '1-602-650-6949', '(154) 848-9469');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Isaac V.', 'Mccullough', 36, 13, 'malesuada.vel.convallis@acfermentumvel.co.uk', 'vitae.dolor.Donec@parturientmontesnascetur.edu', '1-917-976-4760', '(245) 139-7233');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Boris F.', 'Baxter', 4, 7, 'adipiscing@arcu.edu', 'mauris.sagittis.placerat@at.net', '1-964-611-2136', '(740) 613-0440');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Neil C.', 'Levine', 22, 44, 'rutrum.justo.Praesent@in.edu', 'penatibus.et@nuncrisusvarius.edu', '1-201-423-6901', '(162) 477-8743');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Solomon W.', 'Ellison', 2, 16, 'amet@eleifendnondapibus.com', 'imperdiet.nec.leo@commodo.edu', '1-422-792-7024', '(361) 149-5777');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Mason Q.', 'Stokes', 9, 18, 'elit.pellentesque@musProinvel.org', 'ipsum@felisorci.org', '1-713-993-2368', '(572) 420-2061');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Meredith N.', 'Frank', 8, 11, 'quis.pede@Praesentinterdumligula.co.uk', 'risus.Nulla@Nunc.com', '1-790-124-7094', '(336) 466-0733');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Eagan A.', 'Sullivan', 37, 12, 'sodales@Integeridmagna.ca', 'justo@risusaultricies.ca', '1-898-368-1115', '(852) 569-8927');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Yoshi G.', 'Hunt', 1, 9, 'sollicitudin.a.malesuada@pulvinararcuet.ca', 'dictum.mi@Proin.co.uk', '1-145-967-0256', '(502) 592-6621');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Vera E.', 'Blackwell', 38, 6, 'Nam.consequat.dolor@loremvitaeodio.edu', 'nisi@tristiquesenectuset.co.uk', '1-595-208-7737', '(976) 343-4635');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Ralph Q.', 'Wyatt', 12, 40, 'dolor.Donec@lobortistellusjusto.org', 'amet.ultricies@Sednunc.ca', '1-927-704-0747', '(562) 808-1551');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Dane G.', 'Clayton', 32, 33, 'dolor.sit.amet@ultriciesligulaNullam.org', 'eu@accumsan.co.uk', '1-879-377-6412', '(703) 519-1312');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kylan B.', 'Brooks', 26, 52, 'Cum@aliquetlibero.com', 'sed.leo@non.edu', '1-268-923-1501', '(952) 865-0911');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Zachery U.', 'Jackson', 5, 19, 'enim.mi@diam.com', 'augue@nectempus.com', '1-334-640-5690', '(986) 586-6961');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Patience A.', 'Buck', 29, 37, 'at.velit.Cras@nonummy.net', 'magna.Duis.dignissim@hendrerit.co.uk', '1-554-600-5193', '(841) 511-0281');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Daria L.', 'Newman', 27, 17, 'Nullam.vitae@ad.com', 'ante@nunc.net', '1-738-789-7181', '(322) 435-2579');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Willow R.', 'Gallegos', 34, 45, 'consectetuer@lectus.net', 'at@duinec.org', '1-473-444-1674', '(918) 543-2336');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Amanda E.', 'Kirby', 10, 25, 'justo@necligulaconsectetuer.edu', 'libero.nec@vulputatelacus.edu', '1-925-442-1922', '(776) 200-4609');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Rhea X.', 'Cantu', 16, 50, 'lobortis.mauris.Suspendisse@acrisusMorbi.net', 'libero.at@lectusrutrumurna.ca', '1-580-890-0277', '(997) 933-0312');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Cruz S.', 'Weiss', 18, 48, 'auctor@ornareelit.ca', 'amet.massa@ut.edu', '1-371-373-0439', '(333) 636-7597');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Elliott A.', 'Camacho', 13, 5, 'commodo.ipsum.Suspendisse@Sedid.com', 'Sed.eget.lacus@Pellentesquehabitant.co.uk', '1-537-931-2345', '(709) 475-3584');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kellie K.', 'Mejia', 28, 32, 'volutpat@risusodio.edu', 'metus@et.org', '1-747-970-3274', '(211) 747-4921');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Erin Z.', 'Harris', 25, 46, 'diam.lorem.auctor@auctor.org', 'turpis@fringillacursuspurus.edu', '1-577-610-3525', '(799) 549-6520');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Keaton L.', 'Castaneda', 31, 36, 'vitae.odio@inaliquetlobortis.net', 'eget.nisi@pellentesqueSeddictum.org', '1-565-600-8587', '(531) 507-6128');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kuame Z.', 'Slater', 15, 47, 'turpis.nec@metuseu.edu', 'ut.cursus@liberoMorbi.net', '1-948-124-9092', '(242) 903-2980');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Teegan P.', 'Frost', 20, 8, 'lacus.Aliquam@felisadipiscingfringilla.org', 'feugiat@vitae.com', '1-225-615-5389', '(670) 990-8091');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Lunea M.', 'Humphrey', 14, 1, 'est@seddolorFusce.com', 'neque@sitamet.co.uk', '1-119-763-4692', '(782) 772-6880');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Grady M.', 'Carr', 35, 2, 'montes.nascetur@etmagnisdis.com', 'tempor@amet.com', '1-299-546-4733', '(900) 269-9731');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Carol T.', 'Murphy', 3, 27, 'odio.tristique.pharetra@facilisis.ca', 'metus@utlacusNulla.org', '1-898-445-7747', '(863) 850-0627');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Imani B.', 'Boyle', 24, 10, 'cursus.luctus@Morbiquis.ca', 'pellentesque.Sed@doloregestasrhoncus.edu', '1-664-232-6103', '(588) 695-8699');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Otto B.', 'Irwin', 23, 11, 'augue.id@tortordictum.com', 'purus.sapien@orci.net', '1-720-991-0268', '(228) 704-6921');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Yvonne I.', 'Love', 17, 12, 'ligula.Aenean@anteMaecenas.org', 'elit.Aliquam.auctor@cubilia.com', '1-172-275-8660', '(531) 900-1206');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kimberley Z.', 'Mcfadden', 15, 9, 'Proin@sagittis.ca', 'malesuada.vel@porttitorscelerisqueneque.ca', '1-163-549-1545', '(735) 847-8134');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Camille Y.', 'Lawrence', 20, 6, 'venenatis.lacus@mieleifend.ca', 'ligula@pellentesque.net', '1-572-598-8452', '(137) 819-1607');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kitra J.', 'Mayo', 14, 40, 'Sed@litoratorquentper.ca', 'blandit.at.nisi@risusvarius.com', '1-782-676-1064', '(856) 772-8484');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Rahim V.', 'Smith', 35, 33, 'Sed.eu@iaculisquis.ca', 'a.neque.Nullam@idmagnaet.co.uk', '1-117-727-4769', '(436) 721-5683');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Jana N.', 'Lewis', 3, 2, 'vel.vulputate.eu@vitae.com', 'eros@purus.org', '1-997-734-3397', '(169) 215-0505');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Aubrey T.', 'Vasquez', 24, 27, 'lorem@nonsapienmolestie.co.uk', 'eu@dolorvitae.org', '1-287-611-4811', '(832) 438-4993');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Melodie A.', 'Bush', 23, 10, 'orci.sem@tellusloremeu.co.uk', 'diam.nunc@ac.net', '1-109-258-3676', '(900) 759-6868');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Shoshana F.', 'Farley', 17, 11, 'egestas.a.dui@lobortis.edu', 'ultrices@odiotristiquepharetra.net', '1-843-780-4495', '(570) 549-1274');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Isadora N.', 'Mcleod', 19, 12, 'fermentum.risus@loremut.ca', 'vel.vulputate@ornare.ca', '1-604-649-6053', '(208) 110-8544');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Anne G.', 'Adkins', 7, 9, 'eu.tempor@sempercursusInteger.edu', 'Vivamus@Praesenteudui.org', '1-229-299-6306', '(217) 293-6336');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Lillith M.', 'Baldwin', 33, 6, 'egestas.a@ullamcorperviverra.org', 'amet@liberonecligula.com', '1-842-715-8769', '(678) 942-3083');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Lance L.', 'Cooke', 6, 40, 'Integer@idrisusquis.ca', 'tincidunt.orci.quis@montesnasceturridiculus.edu', '1-141-629-2250', '(144) 475-2114');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Lillith Z.', 'Clayton', 36, 33, 'varius.orci@ornareegestas.edu', 'ac.urna@magna.org', '1-306-329-8303', '(731) 352-3985');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Whitney Z.', 'Herman', 4, 2, 'sodales.elit@nibh.net', 'semper@dictum.org', '1-976-850-8872', '(108) 348-1975');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Yvonne J.', 'Dillard', 22, 27, 'Sed@mollis.org', 'tellus.non@lectusquismassa.com', '1-638-617-3473', '(307) 117-8770');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Bryar E.', 'Rich', 2, 10, 'ipsum@magnaLorem.org', 'tempus.eu@quamquisdiam.ca', '1-667-491-1231', '(143) 821-5223');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Jaquelyn G.', 'Mcclure', 9, 11, 'diam@enimEtiamimperdiet.ca', 'magna.Suspendisse@vitae.com', '1-842-965-3757', '(240) 302-5370');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Mechelle M.', 'Snow', 8, 18, 'amet.faucibus@ornare.edu', 'Pellentesque@tortorat.ca', '1-681-119-7901', '(931) 285-9928');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Helen G.', 'Meyers', 37, 11, 'egestas.nunc@ipsumcursus.ca', 'sit.amet.orci@Nullam.com', '1-444-313-3226', '(545) 144-2288');
INSERT INTO Cliente (Nombre, Apellido, DepartamentoId, PosicionId, Email_Compania, Email_Personal, Tel_Compania, Tel_Personal) VALUES  ('Kennedy K.', 'Farmer', 1, 12, 'sagittis.augue.eu@Etiam.com', 'interdum@velnisl.org', '1-285-518-7832', '(437) 859-6459');

GO
