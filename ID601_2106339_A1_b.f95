! Pranav Tambe
! 2106339
! This is a Fortran program that generates a thermal distribution for massless particles
program thermal_distribution_for_massless_particles
    implicit none
    ! Declare variables
    integer :: i
    integer, parameter :: N = 100000 ! Number of particles to simulate
    real, parameter :: variable = 5.0 ,c=1.0! Constant used in the thermal distribution
    real :: p, norm, normalized_func, r, func,momentum_sum,avg
    
    ! Open a file to write the results to
    open(UNIT=1, FILE='thermal_distribution_for_massless_particles.csv')
    
    ! Initialize the random number generator
    call random_seed()
    ! Loop over all particles
    do i = 1, N
    250 call random_number(p)  ! Generate a random number between 0 and 1 and scale it by 15
        p=15*p
        ! Calculate the function value for this particle
        func = exp(-variable*p)
        ! Normalize the function value to a maximum of 1
        norm = 1
        normalized_func = func / norm
        ! Generate another random number between 0 and 1 and compare it to the normalized function value
        call random_number(r) 
        if(normalized_func < r) GOTO 250
        ! If the normalized function value is greater than the random number, write the function value and momentum to the output file
        write(1, *) func,",",p
        momentum_sum=momentum_sum+p
    end do
    avg=(momentum_sum*c)/N
    print *,'The average energy of the system :',avg
end PROGRAM thermal_distribution_for_massless_particles
