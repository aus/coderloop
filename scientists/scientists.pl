#!/usr/bin/perl
use DBI;
use DBD::mysql;

# Settings
$username = $ARGV[0];
$password = $ARGV[1];
$dbname   = $ARGV[2];
$hostname = "localhost";
$port	  = "3306";

# Connect to Database
my $dbh = DBI->connect("DBI:mysql:database=$dbname;"."host=$hostname;port=$port", $username, $password);

# Get essay_scientists variables
$SQL = "select * from essay_scientists";
$Select = $dbh->prepare($SQL);
$Select->execute();
$numScientists = int($Select->rows);

for (my $id = 1; $id <= $numScientists; $id++) {
	# Get essay_scientists variables
	$SQL = "select * from essay_scientists where id = '$id'";
	$Select = $dbh->prepare($SQL);
	$Select->execute();
	$Row = $Select->fetchrow_hashref;
	$name	 = $Row->{name};
	$surname = $Row->{surname};

	# Get scientists variables
	$SQL = "select * from scientists where name = '$name' and surname = '$surname'";
	$Select = $dbh->prepare($SQL);
	$Select->execute();

	$Row	 = $Select->fetchrow_hashref;
	$birth_place = $Row->{birth_place};
	$death_place = $Row->{death_place};
	$birth_date  = formatDate($Row->{birth_date});
	$death_date  = formatDate($Row->{death_date});
	$birth_date_unf  = $Row->{birth_date}; # Unformatted
	$death_date_unf  = $Row->{death_date}; # Unformatted
	$century	 = formatCentury($birth_date);

	# Get ideas
	$SQL = "select * from ideas where name = '$name' and surname = '$surname' order by idea";
	$Select = $dbh->prepare($SQL);
	$Select->execute();
	$n = 0;

	while($Row	 = $Select->fetchrow_hashref) {
		$ideas[$n] = $Row->{idea};
		$n++;
	}

	# Get scientist_whereabouts variables
	$SQL = "select * from scientist_whereabouts where name = '$name' and surname = '$surname'";
	$Select = $dbh->prepare($SQL);
	$Select->execute();
	$w = 0;

	while($Row	 = $Select->fetchrow_hashref) {
		$country[$w]			= $Row->{country};
		$immigration_date[$w]	= formatDate($Row->{immigration_date});
		$emigration_date[$w]	= formatDate($Row->{emigration_date}); 
		$w++;
	}

	#Get contemporaries
	$SQL = "select * from scientists where birth_date < '$death_date_unf' and death_date > '$birth_date_unf' and name <> '$name' and surname <> '$surname' order by surname";
	$Select = $dbh->prepare($SQL);
	$Select->execute();
	$c = 0;

	while($Row = $Select->fetchrow_hashref) {
		$contemporaries[$c] = $Row->{name}." ".$Row->{surname};
		$c++;
	}

	#Print essay
	print "$name $surname [$birth_place $birth_date, $death_place $death_date] is one of the most famous scientists of $century. Between all $name\'s ideas we mention: ".printIdeas().". $name lived in: ".printWhereabout().". $name was a contemporary of ".printContemporaries().".\n\n";
}


sub formatDate
{
	my $date = $_[0];
	my $MM   = substr($date, 5, 2);
	my $DD   = substr($date, 8, 2);
	my $YYYY = substr($date, 0, 4);
	return "$DD/$MM/$YYYY";
}

sub formatCentury
{
	my $birth_year = int(substr($_[0], 6, 4));
	my $cent = 100 * int(0.00001+$birth_year/100);
	return $cent;
}

sub printIdeas
{
	my $printIdea = "";
	for (my $x = 0; $x < $n; $x++)
	{
		$printIdea = $printIdea.$ideas[$x];
		if($x < ($n-1)) {
			$printIdea = $printIdea.", ";
		}
	}
	return $printIdea;
}

sub printWhereabout
{
	my $printWhereabout = "";
	for (my $x = 0; $x < $w; $x++)
	{
		$printWhereabout = $printWhereabout.$country[$x]." from ".$immigration_date[$x]." to ".$emigration_date[$x];
		if($x < ($w-1)) {
			$printWhereabout = $printWhereabout.", ";
		}
	}
	return $printWhereabout;
}

sub printContemporaries
{
	my $printContemp = "";
	for (my $x = 0; $x < $c; $x++)
	{	
		$printContemp = $printContemp.$contemporaries[$x];
		if($x < ($c-1)) {
			$printContemp = $printContemp.", ";
		}
	}
	return $printContemp;	
}