#!/usr/bin/perl

# This takes input lines of the form <key,data> and break the lines at the
# first comma; this can be used to prepare the data for db_load
# taken from eclass

while (<STDIN>) {
  chomp;
  if (/^([^,]+),(.*?)$/) {
    $key=$1; $rec=$2;
    print $key, "\n", $rec, "\n";
  }
}
