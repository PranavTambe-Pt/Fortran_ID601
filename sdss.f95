PROGRAM DISTRIBUTION_EXPONENTIAL

IMPLICIT NONE

INTEGER :: i, i_bin

INTEGER, PARAMETER :: N = 100000

REAL, PARAMETER :: a = 5.0

REAL :: x, r, fp, fp_max, fp_norm
INTEGER, PARAMETER :: N_bins = 100

REAL, PARAMETER :: x_min = 0.0, x_max = 1.0
REAL :: Hist(1:N_bins), Hist_norm(1:N_bins)
REAL :: dx = (x_max - x_min)/REAL(N_bins)
OPEN(UNIT=1, FILE='distribution_1.dat')

OPEN(UNIT=2, FILE='distribution_histogram.dat')

OPEN(UNIT=3, FILE='distribution_histogram normalised.dat')

CALL random_seed() ! Restart the random number generator
Hist = 0.0
DO i=1, N
50 CALL random_number (x) ! Return random number(s) from a uniform distribution in [0, 1) where x=scalar/array

fp = EXP(-a*x)
fp_max = EXP(-a*0.0001)
fp_norm = fp/fp_max
CALL random_number(r)
IF(fp_norm < r) GoTO 50
WRITE(1, *) x
i_bin = INT(x/dx + 1.0D0)
Hist(i_bin) = Hist(i_bin) + 1.0

END DO
DO i_bin = 1, N_bins
   x = dx*(i_bin - 0.5) ! Choosing middle point of the bin
   Hist_norm(i_bin) = Hist(i_bin)/Real(N)
   WRITE(2,*) x, Hist(i_bin)
   WRITE(3,*) x, Hist(i_bin)/Real(N)
ENDDO
END PROGRAM DISTRIBUTION_EXPONENTIAL