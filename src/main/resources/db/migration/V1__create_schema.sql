create table ticket (
  id          identity not null auto_increment,
  payout      double   not null,
  is_paid_out boolean  not null
);