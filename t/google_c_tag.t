use strict; use warnings;

use Test::More tests => 9;

BEGIN {

	use Spreadsheet::XLSX;
};

	
my $excel = Spreadsheet::XLSX->new('t/google_sample.xlsx');
			
ok($excel->{Worksheet}[0]{Cells}[0][0]{Val} eq 'a1');
ok($excel->{Worksheet}[0]{Cells}[0][1]{Val} eq 'b1');
ok($excel->{Worksheet}[0]{Cells}[0][2]{Val} eq 'c1');
ok($excel->{Worksheet}[0]{Cells}[1][0]{Val} eq 'a2');
ok($excel->{Worksheet}[0]{Cells}[1][1]{Val} eq 'b2');
ok($excel->{Worksheet}[0]{Cells}[1][2]{Val} eq 'c2');
ok($excel->{Worksheet}[0]{Cells}[2][0]{Val} eq 'a3');
ok($excel->{Worksheet}[0]{Cells}[2][1]{Val} eq 'b3');
ok($excel->{Worksheet}[0]{Cells}[2][2]{Val} eq 'c3');


