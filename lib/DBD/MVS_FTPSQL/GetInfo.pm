# Transfer this to lib/DBD/MVS_FTPSQL/GetInfo.pm

# The %info hash was automatically generated by
# DBI::DBD::Metadata::write_getinfo_pm v1.05.

package DBD::MVS_FTPSQL::GetInfo;

use strict;
use DBD::MVS_FTPSQL;

# Beware: not officially documented interfaces...
# use DBI::Const::GetInfoType qw(%GetInfoType);
# use DBI::Const::GetInfoReturn qw(%GetInfoReturnTypes %GetInfoReturnValues);

my $sql_driver = 'MVS_FTPSQL';
my $sql_ver_fmt = '%02d.%02d.%04d';   # ODBC version string: ##.##.#####
my $sql_driver_ver = sprintf $sql_ver_fmt, split (/\./, $DBD::MVS_FTPSQL::VERSION);

my @Keywords = qw(

HOST;PORT;DATABASE;UID;PWD;DSN
);


sub sql_keywords {

    return join ',', @Keywords;

}



sub sql_data_source_name {
    my $dbh = shift;
    return "dbi:$sql_driver:" . $dbh->{Name};
}

sub sql_user_name {
    my $dbh = shift;
    # CURRENT_USER is a non-standard attribute, probably undef
    # Username is a standard DBI attribute
    return $dbh->{CURRENT_USER} || $dbh->{Username};
}


our %info = (
     20 => 'N',                           # SQL_ACCESSIBLE_PROCEDURES
     19 => 'N',                           # SQL_ACCESSIBLE_TABLES
      0 => 0,                             # SQL_ACTIVE_CONNECTIONS
    116 => 1,                             # SQL_ACTIVE_ENVIRONMENTS
      1 => 0,                             # SQL_ACTIVE_STATEMENTS
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   169 => undef,                         # SQL_AGGREGATE_FUNCTIONS
    117 => 0,                             # SQL_ALTER_DOMAIN
     86 => 12393,                         # SQL_ALTER_TABLE
  10021 => 0,                             # SQL_ASYNC_MODE
    120 => 4,                             # SQL_BATCH_ROW_COUNT
    121 => 15,                            # SQL_BATCH_SUPPORT
     82 => 90,                            # SQL_BOOKMARK_PERSISTENCE
    114 => 0,                             # SQL_CATALOG_LOCATION
  10003 => 'N',                           # SQL_CATALOG_NAME
     41 => '.',                           # SQL_CATALOG_NAME_SEPARATOR
     42 => 'CATALOG',                     # SQL_CATALOG_TERM
     92 => 0,                             # SQL_CATALOG_USAGE
  10004 => '',                            # SQL_COLLATING_SEQUENCE
  10004 => '',                            # SQL_COLLATION_SEQ
     87 => 'Y',                           # SQL_COLUMN_ALIAS
     22 => 0,                             # SQL_CONCAT_NULL_BEHAVIOR
     53 => 0,                             # SQL_CONVERT_BIGINT
     54 => 0,                             # SQL_CONVERT_BINARY
     55 => 0,                             # SQL_CONVERT_BIT
     56 => 0,                             # SQL_CONVERT_CHAR
     57 => 0,                             # SQL_CONVERT_DATE
     58 => 0,                             # SQL_CONVERT_DECIMAL
     59 => 0,                             # SQL_CONVERT_DOUBLE
     60 => 0,                             # SQL_CONVERT_FLOAT
     48 => 1,                             # SQL_CONVERT_FUNCTIONS
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   173 => undef,                         # SQL_CONVERT_GUID
     61 => 0,                             # SQL_CONVERT_INTEGER
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   123 => undef,                         # SQL_CONVERT_INTERVAL_DAY_TIME
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   124 => undef,                         # SQL_CONVERT_INTERVAL_YEAR_MONTH
     71 => 0,                             # SQL_CONVERT_LONGVARBINARY
     62 => 0,                             # SQL_CONVERT_LONGVARCHAR
     63 => 0,                             # SQL_CONVERT_NUMERIC
     64 => 0,                             # SQL_CONVERT_REAL
     65 => 0,                             # SQL_CONVERT_SMALLINT
     66 => 0,                             # SQL_CONVERT_TIME
     67 => 0,                             # SQL_CONVERT_TIMESTAMP
     68 => 0,                             # SQL_CONVERT_TINYINT
     69 => 0,                             # SQL_CONVERT_VARBINARY
     70 => 0,                             # SQL_CONVERT_VARCHAR
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   122 => undef,                         # SQL_CONVERT_WCHAR
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   125 => undef,                         # SQL_CONVERT_WLONGVARCHAR
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   126 => undef,                         # SQL_CONVERT_WVARCHAR
     74 => 2,                             # SQL_CORRELATION_NAME
    127 => 0,                             # SQL_CREATE_ASSERTION
    128 => 0,                             # SQL_CREATE_CHARACTER_SET
    129 => 0,                             # SQL_CREATE_COLLATION
    130 => 0,                             # SQL_CREATE_DOMAIN
    131 => 0,                             # SQL_CREATE_SCHEMA
    132 => 1537,                          # SQL_CREATE_TABLE
    133 => 0,                             # SQL_CREATE_TRANSLATION
    134 => 3,                             # SQL_CREATE_VIEW
     23 => 2,                             # SQL_CURSOR_COMMIT_BEHAVIOR
     24 => 2,                             # SQL_CURSOR_ROLLBACK_BEHAVIOR
  10001 => 0,                             # SQL_CURSOR_SENSITIVITY
     16 => 'PG2DDSP',                     # SQL_DATABASE_NAME
      2 => \&sql_data_source_name,        # SQL_DATA_SOURCE_NAME
     25 => 'N',                           # SQL_DATA_SOURCE_READ_ONLY
    119 => 0,                             # SQL_DATETIME_LITERALS
     17 => 'DB2',                         # SQL_DBMS_NAME
     18 => '08.01.0000',                  # SQL_DBMS_VER
     18 => '08.01.0000',                  # SQL_DBMS_VERSION
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   170 => undef,                         # SQL_DDL_INDEX
     26 => 2,                             # SQL_DEFAULT_TRANSACTION_ISOLATION
     26 => 2,                             # SQL_DEFAULT_TXN_ISOLATION
  10002 => 'Y',                           # SQL_DESCRIBE_PARAMETER
    171 => '03.52.0002.0002',             # SQL_DM_VER
      3 => 157084600,                     # SQL_DRIVER_HDBC
#   135 => undef,                         # SQL_DRIVER_HDESC
      4 => 157076488,                     # SQL_DRIVER_HENV
#    76 => undef,                         # SQL_DRIVER_HLIB
#     5 => undef,                         # SQL_DRIVER_HSTMT
      6 => $INC{'DBD/MVS_FTPSQL.pm'},     # SQL_DRIVER_NAME
     77 => '03.51',                       # SQL_DRIVER_ODBC_VER
      7 => $sql_driver_ver,               # SQL_DRIVER_VER
    136 => 0,                             # SQL_DROP_ASSERTION
    137 => 0,                             # SQL_DROP_CHARACTER_SET
    138 => 0,                             # SQL_DROP_COLLATION
    139 => 0,                             # SQL_DROP_DOMAIN
    140 => 0,                             # SQL_DROP_SCHEMA
    141 => 1,                             # SQL_DROP_TABLE
    142 => 0,                             # SQL_DROP_TRANSLATION
    143 => 1,                             # SQL_DROP_VIEW
    144 => 0,                             # SQL_DYNAMIC_CURSOR_ATTRIBUTES1
    145 => 0,                             # SQL_DYNAMIC_CURSOR_ATTRIBUTES2
     27 => 'Y',                           # SQL_EXPRESSIONS_IN_ORDERBY
      8 => 1,                             # SQL_FETCH_DIRECTION
     84 => 0,                             # SQL_FILE_USAGE
    146 => 57345,                         # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES1
    147 => 57345,                         # SQL_FORWARD_ONLY_CURSOR_ATTRIBUTES2
     81 => 3,                             # SQL_GETDATA_EXTENSIONS
     88 => 1,                             # SQL_GROUP_BY
     28 => 1,                             # SQL_IDENTIFIER_CASE
     29 => '"',                           # SQL_IDENTIFIER_QUOTE_CHAR
    148 => 3,                             # SQL_INDEX_KEYWORDS
    149 => 0,                             # SQL_INFO_SCHEMA_VIEWS
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
#   172 => undef,                         # SQL_INSERT_STATEMENT
     73 => 'Y',                           # SQL_INTEGRITY
    150 => 1048143,                       # SQL_KEYSET_CURSOR_ATTRIBUTES1
    151 => 137,                           # SQL_KEYSET_CURSOR_ATTRIBUTES2
     89 => \&sql_keywords,                # SQL_KEYWORDS
    113 => 'N',                           # SQL_LIKE_ESCAPE_CLAUSE
     78 => 0,                             # SQL_LOCK_TYPES
     34 => 0,                             # SQL_MAXIMUM_CATALOG_NAME_LENGTH
     97 => 750,                           # SQL_MAXIMUM_COLUMNS_IN_GROUP_BY
     98 => 64,                            # SQL_MAXIMUM_COLUMNS_IN_INDEX
     99 => 750,                           # SQL_MAXIMUM_COLUMNS_IN_ORDER_BY
    100 => 750,                           # SQL_MAXIMUM_COLUMNS_IN_SELECT
    101 => 750,                           # SQL_MAXIMUM_COLUMNS_IN_TABLE
     30 => 18,                            # SQL_MAXIMUM_COLUMN_NAME_LENGTH
      1 => 0,                             # SQL_MAXIMUM_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAXIMUM_CURSOR_NAME_LENGTH
      0 => 0,                             # SQL_MAXIMUM_DRIVER_CONNECTIONS
  10005 => 18,                            # SQL_MAXIMUM_IDENTIFIER_LENGTH
    102 => 254,                           # SQL_MAXIMUM_INDEX_SIZE
    104 => 32706,                         # SQL_MAXIMUM_ROW_SIZE
     32 => 32,                            # SQL_MAXIMUM_SCHEMA_NAME_LENGTH
    105 => 32765,                         # SQL_MAXIMUM_STATEMENT_LENGTH
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
# 20000 => undef,                         # SQL_MAXIMUM_STMT_OCTETS
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
# 20001 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_DATA
#db get_info failed: odbc_get_info/SQLGetInfo err=-1
# 20002 => undef,                         # SQL_MAXIMUM_STMT_OCTETS_SCHEMA
    106 => 15,                            # SQL_MAXIMUM_TABLES_IN_SELECT
     35 => 18,                            # SQL_MAXIMUM_TABLE_NAME_LENGTH
    107 => 8,                             # SQL_MAXIMUM_USER_NAME_LENGTH
  10022 => 0,                             # SQL_MAX_ASYNC_CONCURRENT_STATEMENTS
    112 => 32704,                         # SQL_MAX_BINARY_LITERAL_LEN
     34 => 0,                             # SQL_MAX_CATALOG_NAME_LEN
    108 => 32704,                         # SQL_MAX_CHAR_LITERAL_LEN
     97 => 750,                           # SQL_MAX_COLUMNS_IN_GROUP_BY
     98 => 64,                            # SQL_MAX_COLUMNS_IN_INDEX
     99 => 750,                           # SQL_MAX_COLUMNS_IN_ORDER_BY
    100 => 750,                           # SQL_MAX_COLUMNS_IN_SELECT
    101 => 750,                           # SQL_MAX_COLUMNS_IN_TABLE
     30 => 18,                            # SQL_MAX_COLUMN_NAME_LEN
      1 => 0,                             # SQL_MAX_CONCURRENT_ACTIVITIES
     31 => 18,                            # SQL_MAX_CURSOR_NAME_LEN
      0 => 0,                             # SQL_MAX_DRIVER_CONNECTIONS
  10005 => 18,                            # SQL_MAX_IDENTIFIER_LEN
    102 => 254,                           # SQL_MAX_INDEX_SIZE
     32 => 32,                            # SQL_MAX_OWNER_NAME_LEN
     33 => 32,                            # SQL_MAX_PROCEDURE_NAME_LEN
     34 => 0,                             # SQL_MAX_QUALIFIER_NAME_LEN
    104 => 32706,                         # SQL_MAX_ROW_SIZE
    103 => 'Y',                           # SQL_MAX_ROW_SIZE_INCLUDES_LONG
     32 => 32,                            # SQL_MAX_SCHEMA_NAME_LEN
    105 => 32765,                         # SQL_MAX_STATEMENT_LEN
    106 => 15,                            # SQL_MAX_TABLES_IN_SELECT
     35 => 18,                            # SQL_MAX_TABLE_NAME_LEN
    107 => 8,                             # SQL_MAX_USER_NAME_LEN
     37 => 'N',                           # SQL_MULTIPLE_ACTIVE_TXN
     36 => 'Y',                           # SQL_MULT_RESULT_SETS
    111 => 'N',                           # SQL_NEED_LONG_DATA_LEN
     75 => 1,                             # SQL_NON_NULLABLE_COLUMNS
     85 => 0,                             # SQL_NULL_COLLATION
     49 => 16711551,                      # SQL_NUMERIC_FUNCTIONS
      9 => 2,                             # SQL_ODBC_API_CONFORMANCE
    152 => 2,                             # SQL_ODBC_INTERFACE_CONFORMANCE
     12 => 1,                             # SQL_ODBC_SAG_CLI_CONFORMANCE
     15 => 2,                             # SQL_ODBC_SQL_CONFORMANCE
     73 => 'Y',                           # SQL_ODBC_SQL_OPT_IEF
     10 => '03.52',                       # SQL_ODBC_VER
    115 => 127,                           # SQL_OJ_CAPABILITIES
     90 => 'N',                           # SQL_ORDER_BY_COLUMNS_IN_SELECT
     38 => 'Y',                           # SQL_OUTER_JOINS
    115 => 127,                           # SQL_OUTER_JOIN_CAPABILITIES
     39 => 'CREATOR',                     # SQL_OWNER_TERM
     91 => 29,                            # SQL_OWNER_USAGE
    153 => 1,                             # SQL_PARAM_ARRAY_ROW_COUNTS
    154 => 1,                             # SQL_PARAM_ARRAY_SELECTS
     80 => 7,                             # SQL_POSITIONED_STATEMENTS
     79 => 31,                            # SQL_POS_OPERATIONS
     21 => 'Y',                           # SQL_PROCEDURES
     40 => 'stored procedures',           # SQL_PROCEDURE_TERM
    114 => 0,                             # SQL_QUALIFIER_LOCATION
     41 => '.',                           # SQL_QUALIFIER_NAME_SEPARATOR
     42 => 'CATALOG',                     # SQL_QUALIFIER_TERM
     92 => 0,                             # SQL_QUALIFIER_USAGE
     93 => 3,                             # SQL_QUOTED_IDENTIFIER_CASE
     11 => 'N',                           # SQL_ROW_UPDATES
     39 => 'CREATOR',                     # SQL_SCHEMA_TERM
     91 => 29,                            # SQL_SCHEMA_USAGE
     43 => 1,                             # SQL_SCROLL_CONCURRENCY
     44 => 19,                            # SQL_SCROLL_OPTIONS
     14 => '',                            # SQL_SEARCH_PATTERN_ESCAPE
     13 => 'DCS5D15',                     # SQL_SERVER_NAME
     94 => '@#',                          # SQL_SPECIAL_CHARACTERS
    155 => 7,                             # SQL_SQL92_DATETIME_FUNCTIONS
    156 => 11,                            # SQL_SQL92_FOREIGN_KEY_DELETE_RULE
    157 => 0,                             # SQL_SQL92_FOREIGN_KEY_UPDATE_RULE
    158 => 8048,                          # SQL_SQL92_GRANT
    159 => 0,                             # SQL_SQL92_NUMERIC_VALUE_FUNCTIONS
    160 => 15879,                         # SQL_SQL92_PREDICATES
    161 => 344,                           # SQL_SQL92_RELATIONAL_JOIN_OPERATORS
    162 => 13696,                         # SQL_SQL92_REVOKE
    163 => 0,                             # SQL_SQL92_ROW_VALUE_CONSTRUCTOR
    164 => 0,                             # SQL_SQL92_STRING_FUNCTIONS
    165 => 5,                             # SQL_SQL92_VALUE_EXPRESSIONS
    118 => 1,                             # SQL_SQL_CONFORMANCE
    166 => 1,                             # SQL_STANDARD_CLI_CONFORMANCE
    167 => 0,                             # SQL_STATIC_CURSOR_ATTRIBUTES1
    168 => 131,                           # SQL_STATIC_CURSOR_ATTRIBUTES2
     83 => 0,                             # SQL_STATIC_SENSITIVITY
     50 => 335871,                        # SQL_STRING_FUNCTIONS
     95 => 31,                            # SQL_SUBQUERIES
     51 => 7,                             # SQL_SYSTEM_FUNCTIONS
     45 => 'table',                       # SQL_TABLE_TERM
    109 => 0,                             # SQL_TIMEDATE_ADD_INTERVALS
    110 => 0,                             # SQL_TIMEDATE_DIFF_INTERVALS
     52 => 8190,                          # SQL_TIMEDATE_FUNCTIONS
     46 => 2,                             # SQL_TRANSACTION_CAPABLE
     72 => 15,                            # SQL_TRANSACTION_ISOLATION_OPTION
     46 => 2,                             # SQL_TXN_CAPABLE
     72 => 15,                            # SQL_TXN_ISOLATION_OPTION
     96 => 3,                             # SQL_UNION
     96 => 3,                             # SQL_UNION_STATEMENT
     47 => \&sql_user_name,               # SQL_USER_NAME
  10000 => 1996,                          # SQL_XOPEN_CLI_YEAR
);

1;

__END__