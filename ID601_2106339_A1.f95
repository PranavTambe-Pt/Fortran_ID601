! Pranav Tambe
! 2106339
program distribute_particles_randomly
   implicit none     
   integer, parameter :: no_of_particles = 1000 ! number of particles to be generated as a constant
   integer :: i     ! loop index variable
   real :: a,b,c   !  declare variables
   real :: x(no_of_particles), y(no_of_particles), z(no_of_particles) ! declare arrays to store particle coordinates
   real, parameter :: x_min = -2.0, x_max = 2.0 ,y_min = -2.0, y_max = 2.0 ,z_min = -2.0, z_max = 2.0 ! boundaries of the coordinate system
   OPEN(UNIT = 1,FILE = "data.csv") ! opens a file named "data.csv" for writing output
   call random_seed()  !   initializes the random number generator
   do i = 1, no_of_particles
      call random_number(a);  !   generates a random number between 0 and 1 and stores it in variable "a"
      x(i) = x_min + (x_max - x_min) * a !   scales the random number "a" to the range of x coordinates and stores it in array "x"
   end do

   do i = 1, no_of_particles
      call random_number(b); !   generates a random number between 0 and 1 and stores it in variable "b"
      y(i) = y_min + (y_max - y_min) * b !   scales the random number "b" to the range of y coordinates and stores it in array "y"
   end do

   do i = 1, no_of_particles
     call random_number(c); !   generates a random number between 0 and 1 and stores it in variable "c"
     z(i) = z_min + (z_max - z_min) * c !   scales the random number "c" to the range of z coordinates and stores it in array "z"
   end do
   
   do i = 1, no_of_particles
      write(1,*) x(i),',',y(i),',',z(i) !   writes the x, y, and z coordinates of each particle to the file "data.csv"
   end do
   close(1) !   closes the file "data.csv"
end program distribute_particles_randomly !   ends the program
