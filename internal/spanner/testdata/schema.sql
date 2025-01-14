CREATE TABLE Foo (
  FooID STRING(36) NOT NULL,
  Name STRING(MAX),
) PRIMARY KEY(FooID);

CREATE TABLE Bar (
  FooID STRING(36) NOT NULL,
  BarID STRING(36) NOT NULL,
  Name STRING(MAX),
) PRIMARY KEY(FooID, BarID),
  INTERLEAVE IN PARENT Foo ON DELETE CASCADE;

CREATE TABLE Baz (
  FooID STRING(36) NOT NULL,
  BarID STRING(36) NOT NULL,
  BazID STRING(36) NOT NULL,
  Name STRING(MAX),
) PRIMARY KEY(FooID, BarID, BazID),
  INTERLEAVE IN PARENT Bar ON DELETE CASCADE;
