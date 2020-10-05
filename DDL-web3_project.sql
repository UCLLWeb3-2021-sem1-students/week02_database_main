CREATE SCHEMA web3_project_r123456; -- replace r123456 with your studentnr

GRANT ALL ON SCHEMA web3_project_r123456 TO lector WITH GRANT OPTION; -- replace r123456 with your studentnr
GRANT ALL ON SCHEMA web3_project_r123456 TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON SCHEMA web3_project_r123456 TO local_r123456; -- replace r123456 with your studentnr

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
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.gebruiker TO local_r123456; -- replace r123456 with your studentnr

DROP TABLE IF EXISTS web3_project_r123456.bezoek; -- replace r123456 with your studentnr

CREATE TABLE web3_project_r123456.bezoek ( -- replace r123456 with your studentnr
                                             id SERIAL PRIMARY KEY,
                                             voornaam character varying(32) NOT NULL,
                                             familienaam character varying(32) NOT NULL,
                                             emailadres character varying(64) NOT NULL,
                                             telefoonnummer character varying(15) NOT NULL,
                                             datum integer NOT NULL,
                                             aankomstuur integer NOT NULL
);

GRANT ALL ON TABLE web3_project_r123456.bezoek TO lector; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_lector; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.bezoek TO r123456; -- replace r123456 with your studentnr
GRANT ALL ON TABLE web3_project_r123456.bezoek TO local_r123456; -- replace r123456 with your studentnr


GRANT ALL ON SEQUENCE web3_project_r123456.bezoek_id_seq TO lector WITH GRANT OPTION;
GRANT ALL ON SEQUENCE web3_project_r123456.gebruiker_id_seq TO lector WITH GRANT OPTION;