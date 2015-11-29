#!/usr/bin/perl



my $score = $ARGV[0];

our $num = $ARGV[1];



$score = int($score*100);



our @fixed = ();



for($s30 = 1; $s30 < 100 ; $s30++){

    for($s35 = 1; $s35 < 100-$30; $s35++){

        my $s40 = 100 - $s30 - $s35;

        if( $s30 * 30 + $s35 * 35 + $s40 * 40 == $score * 10){

            arrange($s30,$s35,$s40);

            printFix();

        }

    }

}



sub arrange{

    my ($a, $b, $c) = @_;

    my $cnt = 0;

    while($a > 10 && $cnt != 5){

       push(@fixed,3);

       $cnt++;

       $a -=10;

    }

    while($b > 10 && $cnt != 5){

       push(@fixed,3.5);

       $cnt++;

       $b -=10;

    }

    while($c > 10 && $cnt != 5){

       push(@fixed,4);

       $cnt++;

       $c -=10;

    }

    random_into($a,$b,$c);

}







sub random_into{

    my ($a,$b,$c) = @_;

    my $total = $num;

    my $rand_a = int(rand($total - 3)) + 1;

    my $rand_b = int(rand($total-$rand_a - 2)) + 1;

    my $rand_c = int(rand($total-$rand_a - $rand_c - 1)) + 1;

    printScore($a,$rand_a,"3.0");

    printScore($b,$rand_b,"3.5");

    printScore($c,$rand_c,"4.0");

}



sub printScore{

        my($rate,$number,$des) = @_;



        print "The score $des($number): ";

        my $avg = int($rate/$number);

        if($number eq 1){

                print $rate;

        }

        else{

                my $repeat = $number -1;

                print "$avg " x $repeat;

                print ($avg+$rate%$number);

        }

        print "\n";

}



sub printFix{

    print "The fixed 10%(5): ";

    foreach(@fixed){

       print $_." ";

    }

    print "\n";

    print "\n";

    @fixed = ();

}
