create database survivor;
drop database survivor;
use survivor;

drop table usuario_ong;
drop table usuario;
drop table ong;


CREATE TABLE IF NOT EXISTS ong (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100),
  texto text,
  link varchar (45),
  cidade VARCHAR(45),
  estado CHAR(2),
  PRIMARY KEY (`id`));
  
  insert into ong values 
  (null, 'ongTeste', 'itanhaem', 'são paulo');
  
  insert into ong values 
  (null, 'CESTA - Centro de Estudos Ameríndios', 'O Centro de Estudos Ameríndios (CEstA) é um Núcleo de Apoio à Pesquisa (NAP), vinculado à Pró-Reitoria de Pesquisa da Universidade de São Paulo. Tem como objetivo produzir, aprofundar, sistematizar e divulgar conhecimentos sobre os povos indígenas das Américas. Sua equipe é composta por pesquisadores de diferentes áreas, contando com especialistas reconhecidos no Brasil e no exterior, vinculados à Faculdade de Filosofia, Letras e Ciências Humanas (Departamentos de Antropologia e História), Museu de Arqueologia e Etnologia, Instituto de Estudos Brasileiros e Instituto de Matemática e Estatística (Departamento de Ciência da Computação).
Mais informações:','http://www.usp.br/cesta/', 'sao_paulo', 'SP'), 
(null, 'CIMI – Conselho Indigenista Missionário', 'O Cimi é um organismo vinculado à CNBB (Conferência Nacional dos Bispos do Brasil) que, em sua atuação missionária, conferiu um novo sentido ao trabalho da igreja católica junto aos povos indígenas. Impulsionados(as) por nossa fé no Evangelho da vida, justiça e solidariedade e frente às agressões do modelo neoliberal, decidimos intensificar a presença e apoio junto às comunidades, povos e organizações indígenas e intervir na sociedade brasileira como aliados (as) dos povos indígenas, fortalecendo o processo de autonomia desses povos na construção de um projeto alternativos, pluriétnico, popular e democrático.”
Mais informações:', 'http://www.cimi.org.br', 'distrito_federal', 'DF'),
(null, 'COMIN – Conselho de Missão entre Povos Indígenas', 'O Conselho de Missão entre Povos Indígenas (COMIN) é um órgão que assessora e coordena trabalhos junto aos povos indígenas. Criado em 1982, tem como compromisso apoiar as prioridades colocadas pelos povos e comunidades indígenas, respeitando seu jeito de ser e sua cultura, trabalhando com eles e não por eles. Para isso, atua criando parcerias e dando apoio nas áreas de educação, saúde, terra, organização, sustentabilidade e defesa de direitos. O COMIN é vinculado à Igreja Evangélica de Confissão Luterana no Brasil (IECLB) e, atualmente, é um dos programas da Fundação Luterana de Diaconia (FLD), a partir da sua incorporação, em 2018. Os trabalhos do COMIN são realizados por uma equipe interdisciplinar dividida em quatro campos de trabalho: Acre e sul do Amazonas, Rondônia, leste e norte de Santa Catarina e Rio Grande do Sul. O órgão atua também através do PROFORDI, o Programa de Formação e Diálogo Intercultural e Inter-religioso, que tem o objetivo de mostrar a realidade dos povos indígenas aos não indígenas para que possam respeitá-la e valorizá-la.
Mais informações:', 'http://www.comin.org.br', 'sao_leopoldo', 'RS'),
(NULL, 'CPI-AC (Comissão Pró-Índio do Acre)', 'A Comissão Pró-Índio do Acre (CPI – AC) é uma organização não-governamental, indigenista, criada em 19 de fevereiro de 1979. Presente em 11 municípios, conta com três coordenações: educação, saúde, meio ambiente/agricultura. Desenvolve cursos de formação, assessora as aldeias, providencia documentação e publicação didática para 9 etnias, em 20 terras indígenas (Ashaninka, Kaxinawá, Arara, Manchineri, Apurinã, Jaminawa, Yawanawá, Kulina e Katukina). Além dessas atividades, realizadas no Acre, a CPI assessora programas voltados para as populações indígenas de outros estados.',
'http://www.cpiacre.org.br', 'rio_branco', 'AC'),
(NULL, 'CPI-SP (Comissão Pró-Índio de São Paulo)', 'A organização não-governamental Comissão Pró-Índio de São Paulo foi fundada em 1978 por um grupo de antropólogos, advogados, médicos, jornalistas e estudantes para defender os direitos dos povos indígenas frente às crescentes ameaças do regime ditatorial vigente naquela época. Nos seus 30 anos de existência, Comissão Pró-Índio de São Paulo tem atuado junto com índios e quilombolas para garantir seus direitos territoriais, culturais e políticos, procurando contribuir com o fortalecimento da democracia e o reconhecimento dos direitos das minorias étnicas.
Mais informações:', ' http://www.cpisp.org.br', 'sao_paulo', 'SP' ),
(null, 'IEB - Instituto Internacional de Educação do Brasil', 'O Instituto Internacional de Educação do Brasil (IEB) é uma instituição brasileira do terceiro setor dedicada a formar e capacitar pessoas, bem como fortalecer organizações nas áreas de manejo dos recursos naturais, gestão ambiental e territorial e outros temas relacionados à sustentabilidade. O IEB atua em rede, busca parcerias e promove situações de interação e intercâmbio entre organizações da sociedade civil, associações comunitárias, instâncias de governo e do setor privado. Como uma organização de ações educativas, incorpora os saberes de parceiros, as diferentes culturas e as técnicas populares.
Mais informações:', 'http://www.iieb.org.br', 'manaus', 'AM'),
(null, 'IEB - Instituto Internacional de Educação do Brasil', 'O Instituto Internacional de Educação do Brasil (IEB) é uma instituição brasileira do terceiro setor dedicada a formar e capacitar pessoas, bem como fortalecer organizações nas áreas de manejo dos recursos naturais, gestão ambiental e territorial e outros temas relacionados à sustentabilidade. O IEB atua em rede, busca parcerias e promove situações de interação e intercâmbio entre organizações da sociedade civil, associações comunitárias, instâncias de governo e do setor privado. Como uma organização de ações educativas, incorpora os saberes de parceiros, as diferentes culturas e as técnicas populares.
Mais informações:', 'http://www.iieb.org.br', 'belem', 'PA');



  
  
  CREATE TABLE IF NOT EXISTS usuario(
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  login VARCHAR(45),
  senha VARCHAR(10),
  cidade VARCHAR(45),
  estado VARCHAR(45),
  PRIMARY KEY (id));
  
  CREATE TABLE IF NOT EXISTS usuario_ong (
   fkUsuario int, 
   foreign key (fkUsuario) references usuario(id),
   fkOng int,
   foreign key (fkOng) references ong(id)
  );
select * from usuario;

select * from ong where estado = 'SP';
