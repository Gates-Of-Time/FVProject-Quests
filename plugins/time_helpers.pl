use POSIX qw(strftime);
use Time::Local;

sub time2eq {
  my $in_time = shift;

  int(strftime("%H%M", localtime($in_time)));
}

sub eq2time {
  my $in_eq_time = shift;
  my $zone_hour = int($in_eq_time / 100);
  my $zone_minute = $in_eq_time - ($zone_hour * 100);

  my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
  return timelocal(0, $zone_minute, $zone_hour, $mday, $mon, $year);
}

sub subtract_eq_times {
  my $eq1 = shift;
  my $eq2 = shift;

  my $t2 = eq2time($eq1);
  my $t1 = eq2time($eq2);

  if($eq1 < 1200 && $eq2 > 1200 && ($t1 - $t2) > 12 * 60 * 60) {
    $t1 -= 24 * 60 * 60;
  }
  elsif($eq2 < $eq1 && $eq1 > 1200 && $eq2 < 1200) {
    $t1 += 24 * 60 * 60;
  }

  return ($t2 - $t1) / 60;
}

sub add_seconds_to_eq_times {
  my $t1 = shift;
  my $t2 = shift;

  my $start_hours = int($t1 / 100);
  my $start_minutes = $t1 - ($start_hours * 100);
  my $start_total = ($start_hours * 60 + $start_minutes);

  my $total = $start_total + $t2;
  my $hours = int($total / 60);
  my $mins = int($total - ($hours * 60));
  my $result = int(sprintf("%02d%02d", $hours, $mins));

  if($result > 2400) {
    $result -= 2400;
  }

  if($result < 0) {
    $result += 2400;
  }
  return $result;
}

sub subtract_seconds_to_eq_times {
  my $t1 = shift;
  my $t2 = shift;

  my $start_hours = int($t1 / 100);
  my $start_minutes = $t1 - ($start_hours * 100);
  my $start_total = ($start_hours * 60 + $start_minutes);

  my $total = $start_total - $t2;

  my $hours = int( $total / (60*60) );
  my $mins = ( $total / 60 ) % 60;

  my $result = int(sprintf("%02d%02d", $total/60%60, $total%60));

  if($result > 2400) {
    $result -= 2400;
  }

  if($result < 0) {
    $result += 2400;
  }
  return $result;
}
