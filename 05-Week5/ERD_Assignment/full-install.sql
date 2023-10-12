CREATE TABLE EmailPref
(
	email_pref_id  INTEGER NOT NULL,
	preference	CHAR(1) DEFAULT 'N' NOT NULL,
	commitment_rejection SMALLINT DEFAULT 0 NOT NULL,
	commitment_update SMALLINT DEFAULT 0 NOT NULL,
	expiring_contract SMALLINT DEFAULT 0 NOT NULL,
	failing_payment SMALLINT DEFAULT 0 NOT NULL,
	incoming_commitment SMALLINT DEFAULT 0 NOT NULL,
	new_commitment SMALLINT DEFAULT 0 NOT NULL,
	invoice_rejection SMALLINT DEFAULT 0 NOT NULL,
	new_discussion_message SMALLINT DEFAULT 0 NOT NULL,
	new_resource SMALLINT DEFAULT 0 NOT NULL,
	open_discussion SMALLINT DEFAULT 0 NOT NULL,
	terminating_commitment SMALLINT DEFAULT 0 NOT NULL,
	change_user SMALLINT DEFAULT 0 NOT NULL,
	bkr_schld_bfr_mgr_app SMALLINT DEFAULT 0 NOT NULL,
	contract_expiration SMALLINT DEFAULT 0 NOT NULL,
	primary key(email_pref_id)
);


CREATE TABLE notification_log_to_send
(
	notification_log_id INTEGER NOT NULL,
	comm_mode VARCHAR2(50),
	priority INTEGER NOT NULL,
	time_to_send DATE DEFAULT sysdate NOT NULL,
	collate_p VARCHAR2(50),
	attempts INTEGER NOT NULL,
	email_id VARCHAR2(50) NOT NULL,
	message_type VARCHAR2(50),
	string0 VARCHAR2(50),
	string1 VARCHAR2(50),
	string2 VARCHAR2(50),
	string3 VARCHAR2(50),
	string4 VARCHAR2(50),
	string5 VARCHAR2(50),	
	string6 VARCHAR2(50),
	string7 VARCHAR2(50),
	string8 VARCHAR2(50),
	string9 VARCHAR2(50),
	number0 NUMBER(18,4),
	number1 NUMBER(18,4),
	number2 NUMBER(18,4),
	number3 NUMBER(18,4),
	number4 NUMBER(18,4),
	number5 NUMBER(18,4),
	number6 NUMBER(18,4),
	number7 NUMBER(18,4),
	number8 NUMBER(18,4),
	number9 NUMBER(18,4),
	pkey0 INTEGER,
	pkey1 INTEGER,
	pkey2 INTEGER,
	pkey3 INTEGER,
	pkey4 INTEGER,
	rejection_code INTEGER,
	primary key(notification_log_id)
);

create table template_map
(
	template_map_id INTEGER NOT NULL,
	mail_service_level INTEGER DEFAULT 1,
	message_type VARCHAR2(50),
	template_name VARCHAR2(50),
	activation_time DATE DEFAULT sysdate NOT NULL,
	collate_p VARCHAR2(50),
	primary key(template_map_id)
);

create table notification_log_sent
(
	notification_log_id INTEGER  NOT NULL,
	comm_mode VARCHAR2(50),
	priority INTEGER NOT NULL,
	time_to_send DATE DEFAULT sysdate,
	collate_p VARCHAR2(50),
	attempts INTEGER NOT NULL,
	email_id VARCHAR2(50) NOT NULL,
	message_type VARCHAR2(50),
	string0 VARCHAR2(50),
	string1 VARCHAR2(50),
	string2 VARCHAR2(50),
	string3 VARCHAR2(50),
	string4 VARCHAR2(50),
	string5 VARCHAR2(50),	
	string6 VARCHAR2(50),
	string7 VARCHAR2(50),
	string8 VARCHAR2(50),
	string9 VARCHAR2(50),
	number0 NUMBER(18,4),
	number1 NUMBER(18,4),
	number2 NUMBER(18,4),
	number3 NUMBER(18,4),
	number4 NUMBER(18,4),
	number5 NUMBER(18,4),
	number6 NUMBER(18,4),
	number7 NUMBER(18,4),
	number8 NUMBER(18,4),
	number9 NUMBER(18,4),
	pkey0 INTEGER,
	pkey1 INTEGER,
	pkey2 INTEGER,
	pkey3 INTEGER,
	pkey4 INTEGER,
	time_sent DATE,
	abort_p VARCHAR2(50),
	rejection_code INTEGER,
	primary key(notification_log_id)
);



CREATE TABLE PayFreq (
       pay_freq_id          SMALLINT NOT NULL,
       pay_freq_desc        VARCHAR2(20) NULL,
       PRIMARY KEY (pay_freq_id)
);


CREATE TABLE PayType (
       pay_type_id          SMALLINT NOT NULL,
       pay_type_desc        CHAR(10) NOT NULL,
       PRIMARY KEY (pay_type_id)
);


CREATE TABLE UsageUnit (
       usage_unit_id        SMALLINT NOT NULL,
       usage_unit_short_name CHAR(15) NOT NULL,
       usage_unit_desc      CHAR(100) NULL,
       PRIMARY KEY (usage_unit_id)
);


CREATE TABLE Sic (
       sic_id               SMALLINT NOT NULL,
       sic_code             CHAR(4) NOT NULL,
       sic_desc             VARCHAR2(50) NOT NULL,
       sic_level            SMALLINT NOT NULL,
       PRIMARY KEY (sic_id)
);


CREATE TABLE SecCategory (
       sec_category_id      INTEGER NOT NULL,
       sec_short_name       CHAR(25) NOT NULL,
       sec_desc             VARCHAR2(50) NOT NULL,
       soft_d_eligible      CHAR(1) NOT NULL,
       parent_id	    INTEGER NOT NULL,
       PRIMARY KEY (sec_category_id)
);


CREATE TABLE Vendor (
       vendor_id            INTEGER NOT NULL,
       vendor_name          VARCHAR2(50) NOT NULL,
       vendor_short         CHAR(20) NOT NULL,
       vendor_contact       VARCHAR2(30) NULL,
       vendor_address_1     VARCHAR2(35) NULL,
       vendor_address_2     VARCHAR2(35) NULL,
       vendor_city          VARCHAR2(35) NULL,
       vendor_state         CHAR(2) NULL,
       vendor_zip           CHAR(10) NULL,
       vendor_country       CHAR(15) NULL,
       vendor_phone         CHAR(15) NULL,
       vendor_fax           CHAR(15) NULL,
       vendor_email         VARCHAR2(35) NULL,
       vendor_url           VARCHAR2(40) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    INTEGER NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       status               SMALLINT NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (vendor_id)
);


CREATE TABLE Service (
       service_id           INTEGER NOT NULL,
       service_name         VARCHAR2(60) NOT NULL,
       service_short        CHAR(20) NOT NULL,
       vendor_id            INTEGER NOT NULL,
       sec_category_id      INTEGER NOT NULL,
       sic_id               SMALLINT NULL,
       service_contact      VARCHAR2(30) NULL,
       service_address_1    VARCHAR2(35) NULL,
       service_address_2    VARCHAR2(35) NULL,
       service_city         VARCHAR2(35) NULL,
       service_state        CHAR(2) NULL,
       service_zip          CHAR(10) NULL,
       service_country      CHAR(15) NULL,
       service_phone        CHAR(15) NULL,
       service_fax          CHAR(15) NULL,
       service_email        VARCHAR2(35) NULL,
       service_url          VARCHAR2(40) NULL,
       service_aba_no       CHAR(10) NULL,
       service_checking_acct_no CHAR(15) NULL,
       usage_unit_id        SMALLINT NULL,
       usage_unit_cost      NUMBER(20,4) NULL,
       term_description     CHAR(18) NULL,
       buy_out_period       VARCHAR2(100) NULL,
       promo_listing        CHAR(1) DEFAULT 'N' NOT NULL,
       service_description  VARCHAR2(500) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    INTEGER NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       pay_type_id          SMALLINT NULL,
       status               SMALLINT NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (service_id), 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType, 
       FOREIGN KEY (usage_unit_id)
                             REFERENCES UsageUnit, 
       FOREIGN KEY (sic_id)
                             REFERENCES Sic, 
       FOREIGN KEY (sec_category_id)
                             REFERENCES SecCategory, 
       FOREIGN KEY (vendor_id)
                             REFERENCES Vendor
);


CREATE TABLE site_branding_info (
       branding_id          INTEGER NOT NULL,
       style_sheet          VARCHAR2(50) NOT NULL,
       images_folder        VARCHAR2(50) NOT NULL,
       PRIMARY KEY (branding_id)
);


CREATE TABLE org_types (
       org_type_id          INTEGER NOT NULL,
       description          VARCHAR2(50) NULL,
       PRIMARY KEY (org_type_id)
);


CREATE TABLE organization (
       org_id               INTEGER NOT NULL,
       org_type_id          INTEGER NOT NULL,
       org_name             VARCHAR2(50) NULL,
       branding_id          INTEGER NOT NULL,
       active               INTEGER NULL,
       PRIMARY KEY (org_id), 
       FOREIGN KEY (branding_id)
                             REFERENCES site_branding_info, 
       FOREIGN KEY (org_type_id)
                             REFERENCES org_types
);


CREATE TABLE users (
       user_id              INTEGER NOT NULL,
       login                varchar2(20) NOT NULL,
       password             varchar2(20) NOT NULL,
       first_name           varchar2(20) NOT NULL,
       middle_name          varchar2(20) NULL,
       last_name            varchar2(20) NOT NULL,
       org_id               INTEGER NOT NULL,
       email                VARCHAR2(50) NULL,
       phone                NUMBER NULL,
       fax                  NUMBER NULL,
       u_login              VARCHAR2(20) NULL,
       active               SMALLINT NOT NULL,
       add_user             INTEGER NULL,
       add_date             DATE NULL,
       change_user          INTEGER NULL,
       change_date          DATE NULL,
       PRIMARY KEY (user_id), 
       FOREIGN KEY (org_id)
                             REFERENCES organization
);

CREATE UNIQUE INDEX users_login_unq ON users
(
       login
);


CREATE TABLE user_services (
       user_service_id      INTEGER NOT NULL,
       service_id           INTEGER NOT NULL,
       user_id              INTEGER NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (user_service_id), 
       FOREIGN KEY (service_id)
                             REFERENCES Service, 
       FOREIGN KEY (user_id)
                             REFERENCES users
);

CREATE UNIQUE INDEX XAK1user_services ON user_services
(
       service_id,
       user_id
);


CREATE TABLE resource_types (
       resource_type_id     INTEGER NOT NULL,
       resource_type_description VARCHAR2(50) NOT NULL,
       PRIMARY KEY (resource_type_id)
);


CREATE TABLE resources (
       resource_id          INTEGER NOT NULL,
       resource_type_id     INTEGER NOT NULL,
       actual_resource_id   INTEGER NOT NULL,
       PRIMARY KEY (resource_id), 
       FOREIGN KEY (resource_type_id)
                             REFERENCES resource_types
);


CREATE TABLE discussions (
       discussion_id        INTEGER NOT NULL,
       resource_id          INTEGER NOT NULL,
       start_user_id        INTEGER NULL,
       start_user_org_type  INTEGER NOT NULL,
       start_user_org_id    INTEGER NOT NULL,
       start_date           DATE NOT NULL,
       title                VARCHAR2(250) NULL,
       active               INTEGER NOT NULL,
       PRIMARY KEY (discussion_id), 
       FOREIGN KEY (start_user_id)
                             REFERENCES users, 
       FOREIGN KEY (resource_id)
                             REFERENCES resources
);


CREATE TABLE discussion_posts (
       post_id              INTEGER NOT NULL,
       discussion_id        INTEGER NOT NULL,
       post_user_id         INTEGER NULL,
       post_user_org_type   INTEGER NOT NULL,
       post_user_org_id     INTEGER NOT NULL,
       post_date            DATE NOT NULL,
       post_message         VARCHAR2(500) NOT NULL,
       PRIMARY KEY (post_id), 
       FOREIGN KEY (discussion_id)
                             REFERENCES discussions, 
       FOREIGN KEY (post_user_id)
                             REFERENCES users
);


CREATE TABLE Currency (
       currency_id          CHAR(3) NOT NULL,
       currency_name        VARCHAR2(30) NOT NULL,
       PRIMARY KEY (currency_id)
);


CREATE TABLE ActiveStatus (
       active_status_id     SMALLINT NOT NULL,
       active_status_desc   CHAR(18) NOT NULL,
       PRIMARY KEY (active_status_id)
);


CREATE TABLE Lawyer (
       lawyer_id            INTEGER NOT NULL,
       lawyer_name          VARCHAR2(50) NOT NULL,
       lawyer_email         VARCHAR2(35) NULL,
       PRIMARY KEY (lawyer_id)
);


CREATE TABLE Approval (
       approval_code_id     SMALLINT NOT NULL,
       approval_desc        CHAR(30) NOT NULL,
       PRIMARY KEY (approval_code_id)
);


CREATE TABLE Function (
       function_id          SMALLINT NOT NULL,
       function_desc        CHAR(25) NOT NULL,
       PRIMARY KEY (function_id)
);


CREATE TABLE Broker (
       bkr_id               INTEGER NOT NULL,
       bkr_name             VARCHAR2(50) NOT NULL,
       bkr_short            CHAR(20) NOT NULL,
       bkr_aba_no           CHAR(10) NULL,
       bkr_checking_acct_no CHAR(18) NULL,
       bkr_contact          VARCHAR2(30) NULL,
       function_id          SMALLINT NULL,
       bkr_address_1        VARCHAR2(35) NOT NULL,
       bkr_address_2        VARCHAR2(35) NULL,
       bkr_city             VARCHAR2(35) NOT NULL,
       bkr_state            CHAR(2) NOT NULL,
       bkr_zip              CHAR(10) NOT NULL,
       bkr_country          CHAR(15) NOT NULL,
       bkr_phone            CHAR(15) NOT NULL,
       bkr_fax              CHAR(15) NULL,
       bkr_email            VARCHAR2(35) NOT NULL,
       bkr_url              VARCHAR2(40) NULL,
       bkr_active_date      DATE NOT NULL,
       bkr_acronym          CHAR(3) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (bkr_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function
);


CREATE TABLE DefaultStatus (
       default_status_id    SMALLINT NOT NULL,
       default_status_desc  CHAR(10) NOT NULL,
       PRIMARY KEY (default_status_id)
);


CREATE TABLE Manager (
       mgr_id               INTEGER NOT NULL,
       mgr_name             VARCHAR2(50) NOT NULL,
       mgr_short            CHAR(20) NOT NULL,
       mgr_aba_no           CHAR(10) NULL,
       mgr_checking_acct_no CHAR(10) NULL,
       alert_acronym        CHAR(10) NULL,
       mgr_contact          VARCHAR2(30) NULL,
       function_id          SMALLINT NULL,
       mgr_address_1        VARCHAR2(35) NULL,
       mgr_address_2        VARCHAR2(35) NULL,
       mgr_city             VARCHAR2(35) NULL,
       mgr_state            CHAR(2) NULL,
       mgr_zip              CHAR(10) NULL,
       mgr_country          CHAR(15) NULL,
       mgr_phone            CHAR(15) NULL,
       mgr_fax              CHAR(15) NULL,
       mgr_email            VARCHAR2(35) NULL,
       mgr_url              VARCHAR2(40) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    SMALLINT NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       image_location       VARCHAR2(50) NULL,
       status               SMALLINT NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (mgr_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function
);


CREATE TABLE BrokerManager (
       bkr_mgr_id           INTEGER NOT NULL,
       bkr_mgr_name         VARCHAR2(50) NOT NULL,
       bkr_mgr_short        CHAR(20) NOT NULL,
       bkr_id               INTEGER NOT NULL,
       mgr_id               INTEGER NOT NULL,
       local_mgr_id         CHAR(17) NULL,
       bkr_mgr_contact      VARCHAR2(30) NULL,
       bkr_mgr_payment_ratio NUMBER(6,4) DEFAULT 1 NOT NULL,
       bkr_mgr_cents_per_share NUMBER(7,4) NULL,
       function_id          SMALLINT NULL,
       bkr_mgr_address_1    VARCHAR2(35) NULL,
       bkr_mgr_address_2    VARCHAR2(35) NULL,
       bkr_mgr_city         VARCHAR2(35) NULL,
       bkr_mgr_state        CHAR(2) NULL,
       bkr_mgr_zip          CHAR(10) NULL,
       bkr_mgr_country      CHAR(15) NULL,
       bkr_mgr_phone        CHAR(15) NULL,
       bkr_mgr_fax          CHAR(15) NULL,
       bkr_mgr_email        VARCHAR2(35) NULL,
       bkr_mgr_url          VARCHAR2(40) NULL,
       bkr_mgr_sales_trader_id INTEGER NULL,
       bkr_mgr_sales_person_id INTEGER NULL,
       bkr_mgr_administrator_id INTEGER NULL,
       default_status       SMALLINT NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       status               SMALLINT NOT NULL,
       active               SMALLINT NULL,
       email_pref_id	    INTEGER DEFAULT 1 NOT NULL,	
       PRIMARY KEY (bkr_mgr_id), 
       FOREIGN KEY (bkr_id)
                             REFERENCES Broker, 
       FOREIGN KEY (default_status)
                             REFERENCES DefaultStatus, 
       FOREIGN KEY (function_id)
                             REFERENCES Function, 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager,
       FOREIGN KEY (email_pref_id)
                             REFERENCES EmailPref
);


CREATE TABLE Commitment (
       commitment_id        INTEGER NOT NULL,
       account_no           VARCHAR2(18) NULL,
       commitment_short     CHAR(20) NOT NULL,
       commitment_name      VARCHAR2(50) NOT NULL,
       last_invoice_id      INTEGER NULL,
       last_invoice_balance NUMBER(20,4) NULL,
       bkr_mgr_id           INTEGER NOT NULL,
       bkr_external_code    CHAR(18) NULL,
       service_id           INTEGER NOT NULL,
       vendor_external_code CHAR(18) NULL,
       sales_trader_id      INTEGER NULL,
       sales_person_id      INTEGER NULL,
       administrator_id     INTEGER NULL,
       person_change_date   DATE NULL,
       pay_freq_id          SMALLINT DEFAULT 3 NOT NULL,
       written              CHAR(1) DEFAULT 'Y' NOT NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       annual_projected_amt NUMBER(20,4) NULL,
       payment_ratio        NUMBER(6,4) NULL,
       start_date           DATE NOT NULL,
       end_date             DATE NOT NULL,
       alert_date           DATE NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       notes                VARCHAR2(200) NULL,
       bkr_user_id          INTEGER NULL,
       mgr_user_id          INTEGER NULL,
       vendor_user_id       INTEGER NULL,
       pay_type_id          SMALLINT NULL,
       approval_code_id     SMALLINT NOT NULL,
       lawyer_id            INTEGER NULL,
       separate_check       CHAR(1) NOT NULL,
       image_location       VARCHAR2(50) NULL,
       moved_to_commitment_id INTEGER NULL,
       active_status        SMALLINT NOT NULL,
       status               SMALLINT NOT NULL,
       PRIMARY KEY (commitment_id), 
       FOREIGN KEY (pay_freq_id)
                             REFERENCES PayFreq, 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (active_status)
                             REFERENCES ActiveStatus, 
       FOREIGN KEY (lawyer_id)
                             REFERENCES Lawyer, 
       FOREIGN KEY (approval_code_id)
                             REFERENCES Approval, 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType, 
       FOREIGN KEY (service_id)
                             REFERENCES Service, 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE roles (
       role_id              INTEGER NOT NULL,
       name                 varchar2(50) NOT NULL,
       description          varchar2(100) NULL,
       org_type_id          INTEGER NOT NULL,
       PRIMARY KEY (role_id), 
       FOREIGN KEY (org_type_id)
                             REFERENCES org_types
);


CREATE TABLE user_roles (
       user_role_id         INTEGER NOT NULL,
       user_id              INTEGER NOT NULL,
       role_id              INTEGER NOT NULL,
       PRIMARY KEY (user_role_id), 
       FOREIGN KEY (user_id)
                             REFERENCES users, 
       FOREIGN KEY (role_id)
                             REFERENCES roles
);

CREATE UNIQUE INDEX XAK1user_roles ON user_roles
(
       user_id,
       role_id
);


CREATE TABLE PlanType (
       pln_type_id          SMALLINT NOT NULL,
       pln_type_desc        CHAR(20) NOT NULL,
       PRIMARY KEY (pln_type_id)
);


CREATE TABLE DataPipe (
       data_pipe_id         CHAR(6) NOT NULL,
       data_pipe_desc       VARCHAR2(35) NOT NULL,
       PRIMARY KEY (data_pipe_id)
);


CREATE TABLE CostCenter (
       cost_center_id       CHAR(18) NOT NULL,
       mgr_id               INTEGER NULL,
       cost_center_desc     VARCHAR2(40) NULL,
       PRIMARY KEY (cost_center_id), 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager
);


CREATE TABLE ManagerPeople (
       mgr_person_id        INTEGER NOT NULL,
       mgr_id               INTEGER NULL,
       function_id          SMALLINT NULL,
       mgr_person_name      VARCHAR2(30) NOT NULL,
       cost_center_id       CHAR(18) NULL,
       PRIMARY KEY (mgr_person_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function, 
       FOREIGN KEY (cost_center_id)
                             REFERENCES CostCenter, 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager
);


CREATE TABLE Terminal (
       terminal_id          INTEGER NOT NULL,
       service_id           INTEGER NULL,
       commitment_id        INTEGER NULL,
       mgr_id               INTEGER NULL,
       terminal_desc        VARCHAR2(35) NULL,
       cpu_code             CHAR(18) NULL,
       eligible_flag        CHAR(1) NOT NULL,
       data_pipe_id         CHAR(6) NULL,
       mgr_person_id        INTEGER NULL,
       PRIMARY KEY (terminal_id), 
       FOREIGN KEY (commitment_id)
                             REFERENCES Commitment, 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager, 
       FOREIGN KEY (service_id)
                             REFERENCES Service, 
       FOREIGN KEY (data_pipe_id)
                             REFERENCES DataPipe, 
       FOREIGN KEY (mgr_person_id)
                             REFERENCES ManagerPeople
);


CREATE TABLE Payment (
       payment_id           INTEGER NOT NULL,
       payment_amt          NUMBER(20,4) NOT NULL,
       payment_date         DATE NULL,
       pay_type_id          SMALLINT NULL,
       check_no             VARCHAR2(20) NOT NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       cleared_date         DATE NULL,
       fx                   FLOAT DEFAULT 1 NOT NULL,
       payment_amt_usd      NUMBER(20,4) NOT NULL,
       org_type_id          INTEGER DEFAULT 3 NOT NULL,
       org_id               INTEGER NOT NULL,
       PRIMARY KEY (payment_id), 
       FOREIGN KEY (org_id)
                             REFERENCES organization, 
       FOREIGN KEY (org_type_id)
                             REFERENCES org_types, 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType
);


CREATE TABLE Status (
       status_id            SMALLINT NOT NULL,
       status_desc          VARCHAR2(100) NOT NULL,
       mgr_desc             VARCHAR2(100) NULL,
       bkr_desc             VARCHAR2(100) NULL,
       PRIMARY KEY (status_id)
);


CREATE TABLE Invoice (
       invoice_id           INTEGER NOT NULL,
       payment_id           INTEGER NULL,
       commitment_id        INTEGER NOT NULL,
       bkr_external_code    VARCHAR2(25) NULL,
       payment_ratio        NUMBER(6,4) NOT NULL,
       invoice_no           VARCHAR2(50) NOT NULL,
       invoice_date         DATE NOT NULL,
       due_date             DATE NULL,
       usage_start_date     DATE NOT NULL,
       usage_end_date       DATE NOT NULL,
       current_amt          NUMBER(20,4) NOT NULL,
       past_due_amt         NUMBER(20,4) DEFAULT 0 NOT NULL,
       tax_amt              NUMBER(20,4) DEFAULT 0 NOT NULL,
       tot_billed_amt       NUMBER(20,4) NOT NULL,
       ineligible_pct       NUMBER(7,4) DEFAULT 0 NOT NULL,
       ineligible_amt       NUMBER(20,4) DEFAULT 0 NOT NULL,
       mixed_use_flag       CHAR(1) DEFAULT 'N' NOT NULL,
       ineligible_mgr_pay   CHAR(1) DEFAULT 'N' NOT NULL,
       mgr_amt_approved     NUMBER(20,4) DEFAULT 0 NOT NULL,
       approval_amt_variance NUMBER(20,4) NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       fx                   FLOAT DEFAULT 1 NOT NULL,
       mgr_amt_approved_usd NUMBER(20,4) NULL,
       mgr_amt_expectation  NUMBER(20,4) NULL,
       mgr_amt_expectation_usd NUMBER(20,4) NULL,
       mgr_approved_user_id CHAR(15) NULL,
       mgr_approved_date    DATE NULL,
       bkr_approved_user_id CHAR(15) NULL,
       bkr_approved_date    DATE NULL,
       acctng_approved_amt  NUMBER(20,4) NULL,
       acctng_approved_amt_usd NUMBER(20,4) NULL,
       acctng_approved_user_id CHAR(15) NULL,
       acctng_approved_date DATE NULL,
       record_entry_date    DATE NULL,
       csr_pay_date         DATE NULL,
       scheduled_pay_date   DATE NULL,
       image_location       VARCHAR2(50) NULL,
       rejected             SMALLINT DEFAULT 0 NOT NULL,
       status_id            SMALLINT NOT NULL,
       PRIMARY KEY (invoice_id), 
       FOREIGN KEY (commitment_id)
                             REFERENCES Commitment, 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (payment_id)
                             REFERENCES Payment, 
       FOREIGN KEY (status_id)
                             REFERENCES Status
);


CREATE TABLE Location (
       location_id          INTEGER NOT NULL,
       location_name        VARCHAR2(50) NOT NULL,
       bkr_mgr_id           INTEGER NOT NULL,
       group_1              VARCHAR2(50) NULL,
       group_2              VARCHAR2(50) NULL,
       group_3              VARCHAR2(50) NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (location_id), 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE LocationInvoice (
       location_invoice_id  INTEGER NOT NULL,
       location_id          INTEGER NOT NULL,
       allocate_amt         NUMBER(20,4) NOT NULL,
       invoice_id           INTEGER NOT NULL,
       active               SMALLINT NOT NULL,
       PRIMARY KEY (location_invoice_id), 
       FOREIGN KEY (location_id)
                             REFERENCES Location, 
       FOREIGN KEY (invoice_id)
                             REFERENCES Invoice
);

CREATE UNIQUE INDEX XAK1LocationInvoice ON LocationInvoice
(
       invoice_id,
       location_id
);


CREATE TABLE BrokerPeople (
       bkr_person_id        INTEGER NOT NULL,
       bkr_id               INTEGER NULL,
       bkr_person_name      VARCHAR2(30) NOT NULL,
       function_id          SMALLINT NOT NULL,
       bkr_person_email     VARCHAR2(35) NULL,
       PRIMARY KEY (bkr_person_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function, 
       FOREIGN KEY (bkr_id)
                             REFERENCES Broker
);


CREATE TABLE IneligMgrPayment (
       ineligible_mgr_pay_id INTEGER NOT NULL,
       mgr_id               INTEGER NULL,
       service_id           INTEGER NULL,
       invoice_id           INTEGER NULL,
       payment_id           INTEGER NULL,
       pay_type_id          SMALLINT NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       fx                   FLOAT DEFAULT 1 NOT NULL,
       mgr_approved_amt     NUMBER(20,4) NULL,
       mgr_approved_amt_usd NUMBER(20,4) NULL,
       mgr_approved_user_id CHAR(15) NULL,
       mgr_approved_date    DATE NULL,
       scheduled_pay_date   DATE NULL,
       PRIMARY KEY (ineligible_mgr_pay_id), 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType, 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (payment_id)
                             REFERENCES Payment, 
       FOREIGN KEY (service_id)
                             REFERENCES Service, 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager, 
       FOREIGN KEY (invoice_id)
                             REFERENCES Invoice
);


CREATE TABLE Bank (
       bank_id              CHAR(3) NOT NULL,
       bank_name            VARCHAR2(50) NOT NULL,
       bank_short           CHAR(20) NOT NULL,
       PRIMARY KEY (bank_id)
);


CREATE TABLE Plan (
       pln_id               INTEGER NOT NULL,
       pln_name             VARCHAR2(60) NOT NULL,
       pln_short            CHAR(20) NOT NULL,
       ein                  CHAR(18) NULL,
       bank_id              CHAR(3) NULL,
       cust_no              CHAR(18) NULL,
       pln_type_id          SMALLINT NULL,
       pln_contact          VARCHAR2(30) NULL,
       function_id          SMALLINT NULL,
       pln_address_1        VARCHAR2(35) NULL,
       pln_address_2        VARCHAR2(35) NULL,
       pln_city             VARCHAR2(35) NULL,
       pln_state            CHAR(2) NULL,
       pln_zip              CHAR(10) NULL,
       pln_country          CHAR(15) NULL,
       pln_phone            CHAR(15) NULL,
       pln_fax              CHAR(15) NULL,
       pln_email            VARCHAR2(35) NULL,
       pln_url              VARCHAR2(40) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    INTEGER NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          CHAR(15) NOT NULL,
       image_location       VARCHAR2(50) NULL,
       status               SMALLINT NOT NULL,
       PRIMARY KEY (pln_id), 
       FOREIGN KEY (pln_type_id)
                             REFERENCES PlanType, 
       FOREIGN KEY (function_id)
                             REFERENCES Function, 
       FOREIGN KEY (bank_id)
                             REFERENCES Bank
);


CREATE TABLE ManagerPlan (
       mgr_pln_id           INTEGER NOT NULL,
       mgr_pln_name         VARCHAR2(60) NOT NULL,
       mgr_pln_short        CHAR(20) NOT NULL,
       mgr_id               INTEGER NULL,
       pln_id               INTEGER NULL,
       autex                CHAR(18) NULL,
       PRIMARY KEY (mgr_pln_id), 
       FOREIGN KEY (mgr_id)
                             REFERENCES Manager, 
       FOREIGN KEY (pln_id)
                             REFERENCES Plan
);


CREATE TABLE BrokerPlan (
       bkr_pln_id           INTEGER NOT NULL,
       bkr_pln_name         VARCHAR2(60) NOT NULL,
       bkr_pln_short        CHAR(20) NOT NULL,
       bkr_id               INTEGER NOT NULL,
       pln_id               INTEGER NOT NULL,
       local_pln_id         CHAR(17) NULL,
       bkr_pln_payment_ratio NUMBER(6,4) DEFAULT 1 NOT NULL,
       bkr_pln_contact      VARCHAR2(30) NULL,
       function_id          SMALLINT NULL,
       bkr_pln_address_1    VARCHAR2(35) NULL,
       bkr_pln_address_2    VARCHAR2(35) NULL,
       bkr_pln_city         VARCHAR2(35) NULL,
       bkr_pln_state        CHAR(2) NULL,
       bkr_pln_zip          CHAR(10) NULL,
       bkr_pln_country      CHAR(15) NULL,
       bkr_pln_phone        CHAR(15) NULL,
       bkr_pln_fax          CHAR(15) NULL,
       bkr_pln_email        VARCHAR2(35) NULL,
       bkr_pln_url          VARCHAR2(40) NULL,
       bkr_pln_sales_trader_id INTEGER NULL,
       bkr_pln_salesperson_id INTEGER NULL,
       bkr_pln_administrator_id INTEGER NULL,
       default_status       SMALLINT NOT NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       status               SMALLINT NOT NULL,
       PRIMARY KEY (bkr_pln_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function, 
       FOREIGN KEY (default_status)
                             REFERENCES DefaultStatus, 
       FOREIGN KEY (bkr_id)
                             REFERENCES Broker, 
       FOREIGN KEY (pln_id)
                             REFERENCES Plan
);


CREATE TABLE TradeCredit (
       time_period          NUMBER(6,0) NOT NULL,
       bkr_mgr_id           INTEGER NOT NULL,
       beneficiary_code     INTEGER NOT NULL,
       business_type        CHAR(1) NOT NULL,
       beneficiary_type     CHAR(1) NOT NULL,
       commission           NUMBER(20,4) NOT NULL,
       credit               NUMBER(20,4) NOT NULL,
       currency_id          CHAR(3) NULL,
       PRIMARY KEY (time_period, bkr_mgr_id, beneficiary_code, business_type), 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE TradeJournal (
       trade_journal_id     INTEGER NOT NULL,
       trade_journal_name   VARCHAR2(30) NOT NULL,
       bkr_mgr_id           INTEGER NULL,
       beneficiary_code     INTEGER NOT NULL,
       beneficiary_type     CHAR(1) NOT NULL,
       trade_journal_date   DATE NOT NULL,
       currency_id          CHAR(3) NOT NULL,
       trade_journal_commission NUMBER(20,4) NOT NULL,
       trade_journal_credit NUMBER(20,4) NOT NULL,
       report_flg           CHAR(1) NOT NULL,
       notes                LONG VARCHAR NULL,
       PRIMARY KEY (trade_journal_id), 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE PayJournal (
       pay_journal_id       INTEGER NOT NULL,
       pay_journal_name     VARCHAR2(30) NOT NULL,
       bkr_mgr_id           INTEGER NULL,
       beneficiary_code     INTEGER NOT NULL,
       beneficiary_type     CHAR(1) NOT NULL,
       pay_journal_date     DATE NOT NULL,
       currency_id          CHAR(3) NOT NULL,
       pay_journal_hard     NUMBER(20,4) NOT NULL,
       pay_journal_soft     NUMBER(20,4) NOT NULL,
       report_flg           CHAR(1) NOT NULL,
       notes                LONG VARCHAR NULL,
       PRIMARY KEY (pay_journal_id), 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE Posting (
       time_period          NUMBER(6,0) NOT NULL,
       bkr_mgr_id           INTEGER NOT NULL,
       beneficiary_code     INTEGER NOT NULL,
       beneficiary_type     CHAR(1) NOT NULL,
       commission           NUMBER(20,4) NOT NULL,
       credit               NUMBER(20,4) NOT NULL,
       payment_hard         NUMBER(20,4) NOT NULL,
       payment_soft         NUMBER(20,4) NOT NULL,
       trade_journal_commission NUMBER(20,4) NOT NULL,
       trade_journal_credit NUMBER(20,4) NOT NULL,
       pay_journal_hard     NUMBER(20,4) NOT NULL,
       pay_journal_soft     NUMBER(20,4) NOT NULL,
       balance              NUMBER(20,4) NOT NULL,
       PRIMARY KEY (time_period, bkr_mgr_id, beneficiary_code), 
       FOREIGN KEY (bkr_mgr_id)
                             REFERENCES BrokerManager
);


CREATE TABLE CrAgreement (
       cr_agreement_id      INTEGER NOT NULL,
       agree_short          CHAR(20) NOT NULL,
       bkr_pln_id           INTEGER NOT NULL,
       bkr_external_code    CHAR(18) NULL,
       pln_external_code    CHAR(18) NULL,
       sales_trader_id      INTEGER NULL,
       sales_person_id      INTEGER NULL,
       administrator_id     INTEGER NULL,
       person_change_date   DATE NULL,
       pay_freq_id          SMALLINT NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       payment_ratio        NUMBER(6,4) DEFAULT 1 NOT NULL,
       letter_sent_date     DATE NULL,
       recapture_pct        NUMBER(6,4) NULL,
       alert_date           DATE NULL,
       add_user             INTEGER NULL,
       add_date             DATE NULL,
       change_user          INTEGER NULL,
       change_date          DATE NULL,
       notes                LONG VARCHAR NULL,
       bkr_user_id          CHAR(15) NULL,
       pln_user_id          CHAR(15) NULL,
       pay_type_id          SMALLINT NULL,
       approval_code_id     SMALLINT NULL,
       image_location       VARCHAR2(50) NULL,
       active_status        SMALLINT NOT NULL,
       status_id            SMALLINT NULL,
       PRIMARY KEY (cr_agreement_id), 
       FOREIGN KEY (approval_code_id)
                             REFERENCES Approval, 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (pay_freq_id)
                             REFERENCES PayFreq, 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType, 
       FOREIGN KEY (status_id)
                             REFERENCES Status, 
       FOREIGN KEY (active_status)
                             REFERENCES ActiveStatus, 
       FOREIGN KEY (bkr_pln_id)
                             REFERENCES BrokerPlan
);


CREATE TABLE CrInvoice (
       cr_invoice_id        INTEGER NOT NULL,
       payment_id           INTEGER NULL,
       cr_agreement_id      INTEGER NOT NULL,
       bkr_external_code    CHAR(18) NULL,
       payment_ratio        NUMBER(6,4) DEFAULT 1 NOT NULL,
       usage_start_date     DATE NULL,
       usage_end_date       DATE NULL,
       current_amt          NUMBER(20,4) NOT NULL,
       currency_id          CHAR(3) DEFAULT 'USD' NOT NULL,
       fx                   FLOAT DEFAULT 1 NOT NULL,
       current_amt_usd      NUMBER(20,4) NULL,
       current_amt_expectation NUMBER(20,4) NOT NULL,
       current_amt_expectation_usd NUMBER(20,4) NULL,
       bkr_approved_user_id CHAR(15) NULL,
       bkr_approved_date    DATE NULL,
       acctng_approved_amt  NUMBER(20,4) NULL,
       acctng_approved_amt_usd NUMBER(20,4) NULL,
       acctng_approved_user_id CHAR(15) NULL,
       acctng_approved_date DATE NULL,
       record_entry_date    DATE NOT NULL,
       csr_pay_date         DATE NULL,
       scheduled_pay_date   DATE NULL,
       status_id            SMALLINT NULL,
       PRIMARY KEY (cr_invoice_id), 
       FOREIGN KEY (currency_id)
                             REFERENCES Currency, 
       FOREIGN KEY (status_id)
                             REFERENCES Status, 
       FOREIGN KEY (payment_id)
                             REFERENCES Payment, 
       FOREIGN KEY (cr_agreement_id)
                             REFERENCES CrAgreement
);


CREATE TABLE redundant_manager (
       redundant_mgr_id     INTEGER NOT NULL,
       orig_mgr_id	    INTEGER NOT NULL,
       mgr_name             VARCHAR2(50) NOT NULL,
       mgr_short            CHAR(20) NOT NULL,
       mgr_aba_no           CHAR(10) NULL,
       mgr_checking_acct_no CHAR(10) NULL,
       alert_acronym        CHAR(10) NULL,
       mgr_contact          VARCHAR2(30) NULL,
       function_id          SMALLINT NULL,
       mgr_address_1        VARCHAR2(35) NULL,
       mgr_address_2        VARCHAR2(35) NULL,
       mgr_city             VARCHAR2(35) NULL,
       mgr_state            CHAR(2) NULL,
       mgr_zip              CHAR(10) NULL,
       mgr_country          CHAR(15) NULL,
       mgr_phone            CHAR(15) NULL,
       mgr_fax              CHAR(15) NULL,
       mgr_email            VARCHAR2(35) NULL,
       mgr_url              VARCHAR2(40) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       change_user          INTEGER NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       change_date          DATE NOT NULL,
       add_user_org_code    SMALLINT NOT NULL,
       status               SMALLINT NOT NULL,
       master_mgr_id	    INTEGER NOT NULL,
       PRIMARY KEY (redundant_mgr_id), 
       FOREIGN KEY (function_id)
                             REFERENCES Function,
       FOREIGN KEY (master_mgr_id)
                             REFERENCES Manager
);


CREATE TABLE redundant_vendor (
       redundant_vendor_id  INTEGER NOT NULL,       
       orig_vendor_id       INTEGER NOT NULL,
       vendor_name          VARCHAR2(50) NOT NULL,
       vendor_short         CHAR(20) NOT NULL,
       vendor_contact       VARCHAR2(30) NULL,
       vendor_address_1     VARCHAR2(35) NULL,
       vendor_address_2     VARCHAR2(35) NULL,
       vendor_city          VARCHAR2(35) NULL,
       vendor_state         CHAR(2) NULL,
       vendor_zip           CHAR(10) NULL,
       vendor_country       CHAR(15) NULL,
       vendor_phone         CHAR(15) NULL,
       vendor_fax           CHAR(15) NULL,
       vendor_email         VARCHAR2(35) NULL,
       vendor_url           VARCHAR2(40) NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    INTEGER NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       status               SMALLINT NOT NULL,
       active               SMALLINT NOT NULL,
       master_vendor_id	    INTEGER NOT NULL,
       PRIMARY KEY (redundant_vendor_id),
       FOREIGN KEY (master_vendor_id)
                             REFERENCES Vendor
);



CREATE TABLE redundant_service (
       redundant_service_id INTEGER NOT NULL,       
       orig_service_id      INTEGER NOT NULL,
       service_name         VARCHAR2(60) NOT NULL,
       service_short        CHAR(20) NOT NULL,
       vendor_id            INTEGER NOT NULL,
       sec_category_id      INTEGER NOT NULL,
       sic_id               SMALLINT NULL,
       service_contact      VARCHAR2(30) NULL,
       service_address_1    VARCHAR2(35) NULL,
       service_address_2    VARCHAR2(35) NULL,
       service_city         VARCHAR2(35) NULL,
       service_state        CHAR(2) NULL,
       service_zip          CHAR(10) NULL,
       service_country      CHAR(15) NULL,
       service_phone        CHAR(15) NULL,
       service_fax          CHAR(15) NULL,
       service_email        VARCHAR2(35) NULL,
       service_url          VARCHAR2(40) NULL,
       service_aba_no       CHAR(10) NULL,
       service_checking_acct_no CHAR(15) NULL,
       usage_unit_id        SMALLINT NULL,
       usage_unit_cost      NUMBER(20,4) NULL,
       term_description     CHAR(18) NULL,
       buy_out_period       VARCHAR2(100) NULL,
       promo_listing        CHAR(1) DEFAULT 'N' NOT NULL,
       service_description  LONG VARCHAR NULL,
       add_user             INTEGER NOT NULL,
       add_date             DATE NOT NULL,
       add_user_org_type    SMALLINT NOT NULL,
       add_user_org_code    INTEGER NOT NULL,
       change_user          INTEGER NOT NULL,
       change_date          DATE NOT NULL,
       status               SMALLINT NOT NULL,
       pay_type_id          SMALLINT NULL,
       active               SMALLINT NOT NULL,
       master_service_id    INTEGER NOT NULL,
       PRIMARY KEY (redundant_service_id), 
       FOREIGN KEY (pay_type_id)
                             REFERENCES PayType, 
       FOREIGN KEY (usage_unit_id)
                             REFERENCES UsageUnit, 
       FOREIGN KEY (sic_id)
                             REFERENCES Sic, 
       FOREIGN KEY (sec_category_id)
                             REFERENCES SecCategory, 
       FOREIGN KEY (master_service_id)
                             REFERENCES Service
);



create table alert_source_types (
       alert_source_type_id	INTEGER NOT NULL,
       source_description		VARCHAR(100),
       PRIMARY KEY (alert_source_type_id)
);

create table alert_types (
       alert_type_id		INTEGER NOT NULL,
       type_description		VARCHAR(100),
       PRIMARY KEY (alert_type_id)
);


create table alerts (
       alert_id			INTEGER NOT NULL,
       alert_organization_id	INTEGER NOT NULL,
       alert_type_id		INTEGER NOT NULL,
       alert_source_type_id	INTEGER NOT NULL,
       actual_alert_source_id	INTEGER NOT NULL,
       alert_source_org_id	INTEGER NOT NULL,
       secondary_alert_source_id INTEGER,
       alert_date		DATE NOT NULL,
       reviewed			CHAR(1) NULL,
       review_date		DATE NULL,
       reviewed_by_user_id	INTEGER NULL,       
       PRIMARY KEY (alert_id),
       FOREIGN KEY (alert_organization_id)
				REFERENCES organization,       
       FOREIGN KEY (alert_type_id)
				REFERENCES alert_types,       
       FOREIGN KEY (alert_source_type_id)
				REFERENCES alert_source_types,       
       FOREIGN KEY (alert_source_org_id)
				REFERENCES organization,       
       FOREIGN KEY (reviewed_by_user_id)
				REFERENCES users
);

drop sequence roles_seq;
drop sequence users_seq;
drop sequence user_roles_seq;
drop sequence organization_seq;
drop sequence manager_seq;
drop sequence broker_seq;
drop sequence brokermanager_seq;
drop sequence commitment_seq;
drop sequence invoice_seq;
drop sequence locationinvoice_seq;
drop sequence vendor_seq;
drop sequence service_seq;
drop sequence function_seq;
drop sequence seccategory_seq;
drop sequence resources_seq;
drop sequence discussions_seq;
drop sequence discussion_posts_seq;
drop sequence redundant_manager_seq;
drop sequence redundant_vendor_seq;
drop sequence redundant_service_seq;
drop sequence alerts_seq;
drop sequence user_services_seq;
drop sequence emailpref_seq;
drop sequence notification_log_to_send_seq;
drop sequence notification_log_sent_seq;
drop sequence template_map_seq;




create sequence roles_seq;
create sequence users_seq;
create sequence user_roles_seq;
create sequence organization_seq;
create sequence manager_seq;
create sequence broker_seq;
create sequence brokermanager_seq;
create sequence commitment_seq;
create sequence invoice_seq;
create sequence locationinvoice_seq;
create sequence vendor_seq;
create sequence service_seq;
create sequence function_seq;
create sequence seccategory_seq;
create sequence resources_seq;
create sequence discussions_seq;
create sequence discussion_posts_seq;
create sequence redundant_manager_seq;
create sequence redundant_vendor_seq;
create sequence redundant_service_seq;
create sequence alerts_seq;
create sequence user_services_seq;
create sequence emailpref_seq;
create sequence notification_log_to_send_seq;
create sequence notification_log_sent_seq;
create sequence template_map_seq;


CREATE OR REPLACE TRIGGER organization_insert_trigger 
BEFORE INSERT ON organization 
FOR EACH ROW 
BEGIN  
       IF INSERTING AND :new.org_id IS NULL THEN   
       SELECT organization_seq.nextval INTO :new.org_id FROM DUAL;
       END IF;
END;
/


CREATE OR REPLACE TRIGGER service_insert_trigger 
BEFORE INSERT ON service 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.service_id IS NULL THEN 
  SELECT service_seq.nextval INTO :new.service_id FROM DUAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER brokermanager_insert_trigger 
BEFORE INSERT ON brokermanager 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.bkr_mgr_id IS NULL THEN 
  SELECT brokermanager_seq.nextval INTO :new.bkr_mgr_id FROM DUAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER commitment_insert_trigger 
BEFORE INSERT ON commitment 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.commitment_id IS NULL THEN 
  SELECT commitment_seq.nextval INTO :new.commitment_id FROM DUAL;
  END IF;
END;
/


CREATE OR REPLACE TRIGGER invoice_insert_trigger 
BEFORE INSERT ON invoice 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.invoice_id IS NULL THEN 
  SELECT invoice_seq.nextval INTO :new.invoice_id FROM DUAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER loc_invoice_insert_trigger 
BEFORE INSERT ON locationinvoice 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.location_invoice_id IS NULL THEN 
  SELECT location_invoice_seq.nextval INTO :new.location_invoice_id FROM DUAL;
  END IF;
END;
/


CREATE OR REPLACE TRIGGER resource_insert_trigger  
BEFORE INSERT ON resources  
FOR EACH ROW  
BEGIN   
       IF INSERTING AND :new.resource_id IS NULL THEN    
       SELECT resources_seq.nextval INTO :new.resource_id FROM DUAL; 
       END IF; 
END; 
/

CREATE OR REPLACE TRIGGER discussion_insert_trigger  
BEFORE INSERT ON discussions  
FOR EACH ROW  
BEGIN   
       IF INSERTING AND :new.discussion_id IS NULL THEN    
       SELECT discussions_seq.nextval INTO :new.discussion_id FROM DUAL; 
       END IF; 
END; 
/

CREATE OR REPLACE TRIGGER disc_posts_insert_trigger  
BEFORE INSERT ON discussion_posts   
FOR EACH ROW  
BEGIN   
       IF INSERTING AND :new.post_id IS NULL THEN    
       SELECT discussion_posts_seq.nextval INTO :new.post_id FROM DUAL; 
       END IF; 
END; 
/


CREATE OR REPLACE TRIGGER red_mgr_insert_trigger 
BEFORE INSERT ON redundant_manager 
FOR EACH ROW 
BEGIN 
       IF INSERTING AND :new.redundant_mgr_id IS NULL THEN 
       SELECT redundant_manager_seq.nextval INTO :new.redundant_mgr_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER red_vendor_insert_trigger 
BEFORE INSERT ON redundant_vendor  
FOR EACH ROW 
BEGIN 
       IF INSERTING AND :new.redundant_vendor_id IS NULL THEN 
       SELECT redundant_vendor_seq.nextval INTO :new.redundant_vendor_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER red_service_insert_trigger 
BEFORE INSERT ON redundant_service 
FOR EACH ROW  
BEGIN  
       IF INSERTING AND :new.redundant_service_id IS NULL THEN  
       SELECT redundant_service_seq.nextval INTO :new.redundant_service_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER alert_insert_trigger 
BEFORE INSERT ON alerts 
FOR EACH ROW  
BEGIN  
       IF INSERTING AND :new.alert_id IS NULL THEN  
       SELECT alerts_seq.nextval INTO :new.alert_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER user_insert_trigger 
BEFORE INSERT ON users  
FOR EACH ROW  
BEGIN  
       IF INSERTING AND :new.user_id IS NULL THEN  
       SELECT users_seq.nextval INTO :new.user_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER user_role_insert_trigger 
BEFORE INSERT ON user_roles   
FOR EACH ROW  
BEGIN  
       IF INSERTING AND :new.user_role_id IS NULL THEN  
       SELECT user_roles_seq.nextval INTO :new.user_role_id FROM DUAL; 
       END IF; 
END;  
/

CREATE OR REPLACE TRIGGER user_services_insert_trigger 
BEFORE INSERT ON user_services    
FOR EACH ROW  
BEGIN  
       IF INSERTING AND :new.user_service_id IS NULL THEN  
       SELECT user_services_seq.nextval INTO :new.user_service_id FROM DUAL; 
       END IF; 
END;  
/


CREATE OR REPLACE FUNCTION getDiscId(arID IN INTEGER, rtID IN INTEGER)
RETURN varchar 
IS 	
discID INTEGER;
BEGIN 
	SELECT d.discussion_id INTO discID FROM discussions d, resources r WHERE d.resource_id = r.resource_id AND d.ACTIVE = 1 AND r.actual_resource_id = arID AND r.resource_type_id = rtID; 
	RETURN to_char(discID); 
END getDiscID;
/

CREATE OR REPLACE FUNCTION checkInactiveDiscussions(arID IN INTEGER, rtID IN INTEGER) 
RETURN varchar IS 
	discID INTEGER; 
	BEGIN 
		SELECT max(d.discussion_id) INTO discID FROM discussions d, resources r 
		WHERE d.resource_id = r.resource_id AND d.ACTIVE = 0 AND r.actual_resource_id = arID AND r.resource_type_id = rtID; 
RETURN to_char(discID); 

END checkInactiveDiscussions;
/

CREATE OR REPLACE TRIGGER notif_to_send_insert_trigger 
BEFORE INSERT ON notification_log_to_send 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.notification_log_id IS NULL THEN 
  SELECT notification_log_to_send_seq.nextval INTO :new.notification_log_id FROM DUAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER notif_sent_insert_trigger 
BEFORE INSERT ON notification_log_sent 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.notification_log_id IS NULL THEN 
  SELECT notification_log_sent_seq.nextval INTO :new.notification_log_id FROM DUAL;
  END IF;
END;
/


CREATE OR REPLACE TRIGGER template_map_insert_trigger 
BEFORE INSERT ON template_map 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.template_map_id IS NULL THEN 
  SELECT template_map_seq.nextval INTO :new.template_map_id FROM DUAL;
  END IF;
END;
/

CREATE OR REPLACE TRIGGER emailpref_insert_trigger 
BEFORE INSERT ON emailpref 
FOR EACH ROW 
BEGIN
  IF INSERTING AND :new.email_pref_id IS NULL THEN 
  SELECT emailpref_seq.nextval INTO :new.email_pref_id FROM DUAL;
  END IF;
END;
/