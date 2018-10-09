alter table ticket add column external_state varchar(20);

update ticket
set external_state = casewhen(is_paid_out = 1, 'COMPLETED', 'NOT_COMPLETED');

alter table ticket drop column is_paid_out;