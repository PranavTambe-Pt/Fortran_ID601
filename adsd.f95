program random_particles

    implicit none
    
    integer, parameter :: n_particles = 100000 ! number of particles
    integer :: i ! loop index
    real :: x, y, z ! particle coordinates
    
    ! Initialize random number generator
    call random_seed()
    
    ! Loop over particles
    do i = 1, n_particles
        
        ! Generate random coordinates in range [-2, 2]
        call random_number(x)
        x = (x - 0.5) * 4.0
        
        call random_number(y)
        y = (y - 0.5) * 4.0
        
        call random_number(z)
        z = (z - 0.5) * 4.0
        
        ! Print particle coordinates
        write(*,*) x, y, z
        
    end do
    
end program random_particles

! program random_particles
!     implicit none
!     integer, parameter :: n_particles = 100000
!     real :: x, y, z
!     real, dimension(n_particles) :: Pooja, Santosh
!     integer :: i
    
!     do i = 1, n_particles
!         Pooja(i) = 4.0 * (rand() - 0.5)
!         Santosh(i) = 4.0 * (rand() - 0.5)
!     end do
    
!     open(unit=10, file='particles.txt')
!     do i = 1, n_particles
!         write(10, *) Pooja(i), Santosh(i), 4.0 * (rand() - 0.5)
!     end do
!     close(unit=10)
    
! end program random_particles
