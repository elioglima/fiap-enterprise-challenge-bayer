![image](https://user-images.githubusercontent.com/6618004/172706650-2355a410-f62b-43fe-a6a5-a6e6ba244a52.png)

# Enterprise Challenge
  - fiap-enterprise-challenge-bayer
  - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS
![image](https://user-images.githubusercontent.com/6618004/172709336-5f2b8518-f533-4eed-bf7b-fa034a6ef4e7.png)

![diagram01](https://user-images.githubusercontent.com/6618004/172709241-c147a35f-46fc-4ca7-b12e-e4af3290e206.jpeg)

![image](https://user-images.githubusercontent.com/6618004/172707049-c4cecca9-b386-437f-8e2d-2d327d2bcca6.png)

![image](https://user-images.githubusercontent.com/6618004/172707127-00de104c-e167-4699-8765-e066368a160f.png)


# Execução da aplicação
![image](https://user-images.githubusercontent.com/6618004/172704580-9305dcca-f527-463f-88e2-fbd4cbd3eda7.png)

![image](https://user-images.githubusercontent.com/6618004/172706475-0af64a21-da67-42a7-9038-c688c475e5ea.png)

![image](https://user-images.githubusercontent.com/6618004/172706544-12be2dd5-ae73-46b5-b61b-8a10f5ebd4fb.png)

# Classe de Conexão do Banco de Dados
![image](https://user-images.githubusercontent.com/6618004/172709002-a4edf810-f3ce-4249-b265-edb19e22fa34.png)

# Cadastro de usuário
![image](https://user-images.githubusercontent.com/6618004/172705560-dfcfe6d5-fa06-4a1c-ba14-195a0c840e41.png)

# Classes de utilização e regras
![image](https://user-images.githubusercontent.com/6618004/172705679-5b07d413-bddf-495f-8392-180a23c28458.png)

# Classes de acesso ao banco de dados
![image](https://user-images.githubusercontent.com/6618004/172705710-b56e7c7b-11f3-46cc-872b-552b670064cf.png)

# Interfaces
![image](https://user-images.githubusercontent.com/6618004/172705734-5505cb90-87d8-4d23-ac75-eb6e1ca60323.png)

# Models
![image](https://user-images.githubusercontent.com/6618004/172705757-7d512ccc-7ac3-47b8-a48e-f2a089c59240.png)

# Utilitários
![image](https://user-images.githubusercontent.com/6618004/172705782-195dd1d3-af0e-49ec-a1da-47b9c5ec1e92.png)


# Create database :: [Flex Grid]([http://exemplo.com/](https://github.com/elioglima/fiap-enterprise-challenge-bayer/blob/main/docs/inserts.sql))
# Inserts :: <a href="https://github.com/elioglima/fiap-enterprise-challenge-bayer/blob/main/docs/inserts.sql">download</a>

  	REM INSERTING into RM92270.BAYER_ALERTPOINT
    	SET DEFINE OFF;

	Insert into RM92270.BAYER_ALERTPOINT (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (1,'ZIKA',to_timestamp('07-JUN-22 11.40.54.489000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.41.26.151000000 PM','DD-MON-RR HH.MI.SSXFF AM'));

	Insert into RM92270.BAYER_ALERTPOINT (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (2,'MALARIA',to_timestamp('07-JUN-22 11.41.09.871000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.41.26.230000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
    
	Insert into RM92270.BAYER_ALERTPOINT (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (3,'DENGUE',to_timestamp('07-JUN-22 11.41.22.608000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.41.26.292000000 PM','DD-MON-RR HH.MI.SSXFF AM'));

	REM INSERTING into RM92270.BAYER_CATEGORY
	SET DEFINE OFF;

	Insert into RM92270.BAYER_CATEGORY (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (1,'INFECTADO',to_timestamp('07-JUN-22 11.41.45.698000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.42.02.340000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_CATEGORY (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (2,'SUSPEITA',to_timestamp('07-JUN-22 11.41.58.810000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.42.02.371000000 PM','DD-MON-RR HH.MI.SSXFF AM'));

	REM INSERTING into RM92270.BAYER_DOCUMENTTYPE
	SET DEFINE OFF;

	Insert into RM92270.BAYER_DOCUMENTTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (1,'RG',to_timestamp('07-JUN-22 11.42.18.879000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.42.33.575000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_DOCUMENTTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (2,'CPF',to_timestamp('07-JUN-22 11.42.29.222000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.42.33.606000000 PM','DD-MON-RR HH.MI.SSXFF AM'));

	REM INSERTING into RM92270.BAYER_INSTITUTION
	SET DEFINE OFF;

	Insert into RM92270.BAYER_INSTITUTION (ID,SOCIALREASON,CNPJ,DATE_CREATE,DATE_UPDATE) 
		values (1,'Posto de Atendimento SP','95.046.986/0001-47',to_timestamp('07-JUN-22 11.54.33.365000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.54.38.377000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_INSTITUTION (ID,SOCIALREASON,CNPJ,DATE_CREATE,DATE_UPDATE) 
		values (2,'Posto de Atendimento RJ','35.671.684/0001-38',to_timestamp('07-JUN-22 11.55.18.028000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.55.20.158000000 PM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_INSTITUTION (ID,SOCIALREASON,CNPJ,DATE_CREATE,DATE_UPDATE) 
		values (3,'Posto de Atendimento PT','95.046.986/0001-47',to_timestamp('07-JUN-22 11.55.18.028000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('07-JUN-22 11.55.20.158000000 PM','DD-MON-RR HH.MI.SSXFF AM'));

	REM INSERTING into RM92270.BAYER_INSTITUTIONADDRESS
	SET DEFINE OFF;

	Insert into RM92270.BAYER_INSTITUTIONADDRESS (ID,"address ","number ",ZIPCODE,COMPLEMENT,DISTRICT,"city ",STATE,UNIT,"date_create ","date_update ",INSTITUTION_ID,LOCATIONTYPE_ID) 
		values (5,'Rua Capao',125,'03541010',null,'Vila Guilhermina','Sao Paulo','Sao Paulo','SP',to_timestamp('08-JUN-22 12.02.42.387000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.03.42.485000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,2);
	
	Insert into RM92270.BAYER_INSTITUTIONADDRESS (ID,"address ","number ",ZIPCODE,COMPLEMENT,DISTRICT,"city ",STATE,UNIT,"date_create ","date_update ",INSTITUTION_ID,LOCATIONTYPE_ID) 
		values (6,'Rua Janap',52,'03541255',null,'Vila Leopolde','Sao Paulo','Sao Paulo','SP',to_timestamp('08-JUN-22 12.02.42.387000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.03.42.485000000 AM','DD-MON-RR HH.MI.SSXFF AM'),2,4);
	
	Insert into RM92270.BAYER_INSTITUTIONADDRESS (ID,"address ","number ",ZIPCODE,COMPLEMENT,DISTRICT,"city ",STATE,UNIT,"date_create ","date_update ",INSTITUTION_ID,LOCATIONTYPE_ID) 
		values (7,'Jaca Mora',555,'03541255',null,'Vila Leopolde','Sao Paulo','Sao Paulo','SP',to_timestamp('08-JUN-22 12.02.42.387000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.03.42.485000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,1);
	

	REM INSERTING into RM92270.BAYER_LOCATIONTYPE
	SET DEFINE OFF;

	Insert into RM92270.BAYER_LOCATIONTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (1,'Norte',to_timestamp('07-JUN-22 11.59.36.465000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.00.15.863000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_LOCATIONTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (2,'Nordeste',to_timestamp('07-JUN-22 11.59.47.033000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.00.15.910000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_LOCATIONTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (3,'Sudeste',to_timestamp('07-JUN-22 11.59.59.410000000 PM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.00.15.942000000 AM','DD-MON-RR HH.MI.SSXFF AM'));
	
	Insert into RM92270.BAYER_LOCATIONTYPE (ID,DESCRIPTION,DATE_CREATE,DATE_UPDATE) 
		values (4,'Sul',to_timestamp('08-JUN-22 12.00.10.368000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.00.15.973000000 AM','DD-MON-RR HH.MI.SSXFF AM'));	

	REM INSERTING into RM92270.BAYER_OCORRENCES
	SET DEFINE OFF;

	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (3,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.21.507000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,1,1);
	
	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (4,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),2,1,2);
	
	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (5,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,2,1);
	
	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (6,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),3,1,1);
	
	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (9,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),2,3,1);
	
	Insert into RM92270.BAYER_OCORRENCES (ID,"note ",DATE_CREATE,DATE_UPDATE,USER_ID,ALERTPOINT_ID,CATEGORY_ID) 
		values (12,'Dores de Cabeça',to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.11.25.476000000 AM','DD-MON-RR HH.MI.SSXFF AM'),4,3,1);

	REM INSERTING into RM92270.BAYER_USER
	SET DEFINE OFF;

	Insert into RM92270.BAYER_USER (ID,NAME,MAIL,PASSWORD,DOCUMENUMBER,"birthdate ",DATE_CREATE,DATE_UPDATE,DOCUMENTTYPE_ID,INSTITUTION_ID) 
		values (1,'Elio Goncalves de Lima','elio.designer@hotmail.com','Ab@102030','21639921877',to_date('15-JUN-22','DD-MON-RR'),to_timestamp('08-JUN-22 12.05.59.087000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.06.03.368000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,1);
	
	Insert into RM92270.BAYER_USER (ID,NAME,MAIL,PASSWORD,DOCUMENUMBER,"birthdate ",DATE_CREATE,DATE_UPDATE,DOCUMENTTYPE_ID,INSTITUTION_ID) 
		values (2,'Ana Beatriz','ana@gmail.com','Av@1234','810.665.850-32',to_date('15-JUN-22','DD-MON-RR'),to_timestamp('08-JUN-22 12.05.59.087000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.05.59.087000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,2);
	
	Insert into RM92270.BAYER_USER (ID,NAME,MAIL,PASSWORD,DOCUMENUMBER,"birthdate ",DATE_CREATE,DATE_UPDATE,DOCUMENTTYPE_ID,INSTITUTION_ID) 
		values (3,'Kaique Bernardo','kaique.bernardo@gmail.com','Ab@45678','089.214.540-47',to_date('08-JUN-22','DD-MON-RR'),to_timestamp('08-JUN-22 12.10.17.607000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.10.22.002000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,1);
	
	Insert into RM92270.BAYER_USER (ID,NAME,MAIL,PASSWORD,DOCUMENUMBER,"birthdate ",DATE_CREATE,DATE_UPDATE,DOCUMENTTYPE_ID,INSTITUTION_ID) 
		values (4,'Andrei Vedovato','Andrei andrei.vedovato@gmail.com','Ab@45678','089.214.540-47',to_date('08-JUN-22','DD-MON-RR'),to_timestamp('08-JUN-22 12.10.17.607000000 AM','DD-MON-RR HH.MI.SSXFF AM'),to_timestamp('08-JUN-22 12.10.22.002000000 AM','DD-MON-RR HH.MI.SSXFF AM'),1,3);
	

	REM INSERTING into RM92270.BAYER_USERADDRESS
	SET DEFINE OFF;
