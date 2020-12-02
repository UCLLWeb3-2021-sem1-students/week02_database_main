CREATE SCHEMA web3_project_r123456; -- replace r123456 with your studentnr

GRANT ALL ON SCHEMA web3_project_r123456 TO lector WITH GRANT OPTION; -- replace r123456 with your studentnr
GRANT ALL ON SCHEMA web3_project_r123456 TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON SCHEMA web3_project_r123456 TO local_r123456; -- replace r123456 with your studentnr
RANT ALL ON TABLE web3_project_r123456 TO local_u0034562; -- lector K. Beheydt 
GRANT ALL ON TABLE web3_project_r123456 TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456 TO local_r123456; -- replace r123456 with your studentnr

SET search_path TO web3_project_r123456; -- replace r123456 with your studentnr

DROP TABLE IF EXISTS web3_project_r123456.gebruiker; -- replace r123456 with your studentnr

CREATE TABLE web3_project_r123456.gebruiker ( -- replace r123456 with your studentnr
                                                id SERIAL PRIMARY KEY,
                                                voornaam character varying(32) NOT NULL,
                                                familienaam character varying(32) NOT NULL,
                                                emailadres character varying(64) NOT NULL,
                                                wachtwoord character varying(32) NOT NULL,
                                                rol character varying(16) DEFAULT 'gebruiker' NOT NULL
);

GRANT ALL ON TABLE web3_project_r123456.gebruiker TO lector WITH GRANT OPTION; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO local_u0015529; -- lector G. Jongen
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO local_u0082528; -- lector E. Steegmans
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO local_u0034562; -- lector K. Beheydt 
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO local_r123456; -- replace r123456 with your studentnr


DROP TABLE IF EXISTS web3_project_r123456.bezoek; -- replace r123456 with your studentnr

CREATE TABLE web3_project_r123456.bezoek ( -- replace r123456 with your studentnr
                                             id SERIAL PRIMARY KEY,
                                             person_id integer NULL,
                                             voornaam character varying(32) NOT NULL,
                                             familienaam character varying(32) NOT NULL,
                                             emailadres character varying(64) NOT NULL,
                                             telefoonnummer character varying(15) NOT NULL,
                                             date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

GRANT ALL ON TABLE web3_project_r123456.bezoek TO lector WITH GRANT OPTION; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_u0015529; 
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_u0082528; 
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_u0034562;
GRANT ALL ON TABLE web3_project_r123456.bezoek TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_r123456; -- replace r123456 with your studentnr

GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO lector WITH GRANT OPTION;
GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO local_u0015529; 
GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO local_u0082528; 
GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO local_u0034562;
GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO local_r123456;

GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO lector WITH GRANT OPTION;
GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO local_u0015529; 
GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO local_u0082528; 
GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO local_u0034562;
GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO local_r123456;
