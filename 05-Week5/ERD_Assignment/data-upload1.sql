insert into site_branding_info values(1,'basicstyletags.inc','images/');

insert into org_types values (1, 'FirmView');
insert into org_types values (2, 'Investment Manager');
insert into org_types values (3, 'Broker');
insert into org_types values (4, 'Vendor');
insert into org_types values (5, 'Plan');
insert into org_types values (6, 'Custody Bank');

insert into alert_types values (1, 'New Resource');
insert into alert_types values (2, 'Failing Payments');
insert into alert_types values (3, 'New Discussion Created');
insert into alert_types values (4, 'Expiring Contracts');
insert into alert_types values (5, 'Incoming Commitments');
insert into alert_types values (6, 'Outgoing Commitments');
insert into alert_types values (7, 'New Discussion Message');
insert into alert_types values (8, 'User Changed');
insert into alert_types values (9, 'Commitment Update');
insert into alert_types values (10, 'Terminating Commitment');
insert into alert_types values (11, 'Incoming Commitment');
insert into alert_types values (12, 'Invoice Rejection');
insert into alert_types values (13, 'Commitment Rejection');
insert into alert_types values (14, 'New Commitment');
insert into alert_types values (15, 'Broker Scheduled Invoice Before Manager Approved');
insert into alert_types values (16, 'Contract Expiring');

insert into alert_source_types values (1, 'Invoice');
insert into alert_source_types values (2, 'Commitment');
insert into alert_source_types values (3, 'Manager');
insert into alert_source_types values (4, 'Vendor');
insert into alert_source_types values (5, 'Service');
insert into alert_source_types values (6, 'User');

insert into resource_types values (1, 'Invoice');
insert into resource_types values (2, 'Commitment');

insert into Status values ( 0, 'Mgr Pending /CSR Unscheduled', 'Pending Approval', 'New Invoices');
insert into Status values ( 1, 'Mgr Approved/CSR Unscheduled', 'Approved Unscheduled', 'Manager Approved');
insert into Status values ( 2, 'Mgr Pending/CSR Scheduled/AP Unscheduled', 'Mgr Pending CSR Scheduled', 'Manager Pending CSR Scheduled');
insert into Status values ( 3, 'Mgr Approved/CSR Scheduled/AP Unscheduled', 'Approved Unscheduled', 'Controller Pending');
insert into Status values ( 4, 'Mgr Pending/CSR Unscheduled/AP Scheduled/Unpaid', 'Mgr Pending Broker Scheduled', 'Mgr Pending Broker Scheduled');
insert into Status values ( 5, 'Mgr Approved/CSR Unscheduled/AP Scheduled/Unpaid', 'Broker Scheduled', 'Scheduled Invoice');
insert into Status values ( 6, 'Mgr Pending/CSR Scheduled/AP Scheduled/Unpaid', 'Mgr Pending Broker Scheduled', 'Mgr Pending Broker Scheduled');
insert into Status values ( 7, 'Mgr Approved/CSR Scheduled/AP Scheduled/Unpaid', 'Broker Scheduled', 'Scheduled Invoice');
insert into Status values ( 12, 'Mgr Pending/CSR Unscheduled/AP Scheduled/Paid', 'Paid Invoice', 'Paid Invoice');
insert into Status values ( 13, 'Mgr Approved/CSR Unscheduled/AP Scheduled/Paid', 'Paid Invoice', 'Paid Invoice');
insert into Status values ( 15, 'Mgr Approved/CSR Scheduled/AP Scheduled/Paid', 'Paid Invoice', 'Paid Invoice');
insert into Status values ( 100, 'Open Discussion Invoice', 'Open Discussion Invoice', 'Open Discussion Invoice');
insert into status values ( 200, 'Mgr Rejected Invoice', 'Mgr Rejected Invoice', 'Mgr Rejected Invoice');
insert into status values ( 300, 'Mgr/Bkr Rejected Invoice', 'Mgr Bkr Rejected Invoice', 'Mgr Bkr Rejected Invoice');


insert into ActiveStatus values (0, 'Inactive');
insert into ActiveStatus values (1, 'Active');
insert into ActiveStatus values (2, 'Terminated');

insert into PayType values (1, 'Check');
insert into PayType values (2, 'Wire');
insert into PayType values (3, 'ACH');

insert into PayFreq values (1, 'Weekly');
insert into PayFreq values (2, 'BiWeekly');
insert into PayFreq values (3, 'Monthly');
insert into PayFreq values (4, 'BiMonthly');
insert into PayFreq values (5, 'Quarterly');
insert into PayFreq values (6, 'SemiAnnually');
insert into PayFreq values (7, 'Annually');
insert into PayFreq values (8, 'BiAnnually');
insert into PayFreq values (9, 'Sporadically');
insert into PayFreq values (10, 'One Time Fee');
insert into PayFreq values (11, 'Fiscal');

insert into UsageUnit (usage_unit_id, usage_unit_short_name) values (1, 'Subscription');
insert into UsageUnit (usage_unit_id, usage_unit_short_name) values (2, 'Data Terminal');

insert into Approval values (1,'Auto Approve');
insert into Approval values (2,'Never Auto Approve');
insert into Approval values (3,'AutoApprove if Amount is same');

insert into DefaultStatus values (1,'No Update');
insert into DefaultStatus values (2,'Update');
insert into DefaultStatus values (3,'Prompt');

insert into roles values (roles_seq.nextval, 'FIRMVIEW CSR', 'FirmView Data Entry Personnel', 1);
insert into roles values (roles_seq.nextval, 'FIRMVIEW ADMIN', 'FirmView Administrator', 1);
insert into roles values (roles_seq.nextval, 'MANAGER CSR', 'Investment Manager CSR', 2);
insert into roles values (roles_seq.nextval, 'MANAGER ADMIN', 'Investment Manager Administrator', 2);
insert into roles values (roles_seq.nextval, 'MANAGER SALES/TRADER', 'Investment Manager Sales/Trader', 2);
insert into roles values (roles_seq.nextval, 'BROKER CSR', 'Broker CSR', 3);
insert into roles values (roles_seq.nextval, 'BROKER SALES/TRADER', 'Broker Sales/Trade Personnel', 3);
insert into roles values (roles_seq.nextval, 'BROKER CONTROLLER', 'Broker Controller/Admin', 3);
insert into roles values (roles_seq.nextval, 'VENDOR CSR', 'Vendor CSR', 4);
insert into roles values (roles_seq.nextval, 'VENDOR ADMIN', 'Vendor Administrator', 4);
insert into roles values (roles_seq.nextval, 'PLAN CSR', 'Plan CSR', 5);
insert into roles values (roles_seq.nextval, 'PLAN ADMIN', 'Plan Administrator', 5);
insert into roles values (roles_seq.nextval, 'PLAN SALES', 'Plan Sales Personnel', 5);
insert into roles values (roles_seq.nextval, 'CUSTODY BANK CSR', 'Custody Bank CSR', 6);
insert into roles values (roles_seq.nextval, 'CUSTODY BANK ADMIN', 'Custody Bank Administrator', 6);
insert into roles values (roles_seq.nextval, 'CUSTODY BANK SALES', 'Custody Bank Salesman', 6);

insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'CommitmentRejection', 'CommitmentRejection');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'CommitmentUpdate', 'CommitmentUpdate');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'ExpiringContract', 'ExpiringContract');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'FailingPayment', 'FailingPayment');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'IncomingCommitment', 'IncomingCommitment');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'InvoiceRejection', 'InvoiceRejection');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'NewDiscussion', 'NewDiscussion');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'NewResource', 'NewResource');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'OpenDiscussion', 'OpenDiscussion');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'TerminatingCommitment', 'TerminatingCommitment');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'UserChanged', 'UserChanged');
insert into template_map (template_map_id, message_type, template_name) values(template_map_seq.nextval, 'NewCommitment', 'NewCommitment');

insert into emailpref values (emailpref_seq.nextval,'N', 0,0,0,0,0,0,0,0,0,0,0,0,0,0);



