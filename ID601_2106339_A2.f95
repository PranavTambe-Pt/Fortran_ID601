! Pranav Tambe
! 2106339
program analysis_of_droplets
     IMPLICIT NONE
     REAL,parameter :: dt=0.0001,vx0 = 25.0,vy0=0.0,vz0 =0.0, z0=2.0,x0=0.0,y0=0.0,pi = 3.14,eta = 1.6e-5,g =9.80
     INTEGER,parameter :: particle_count = 100000
     ! integer::i
     real :: x,y ,z,m,rho,r,h ,t,vx ,vy ,vz 
     r = 100.0e-6  ! radius of the droplet
     rho = 1000.0   ! density of the droplet
     m = (4*pi*r*r*r*rho)/3   ! mass of the droplet computed using its radius and density
     ! initial conditions
! do i =1,particle_count
     x = x0   ! initial x-coordinate of the droplet
     y = y0   ! initial y-coordinate of the droplet
     z = z0   ! initial z-coordinate of the droplet
     t=0     ! initial time
     h = sqrt(x*x + y*y)   ! horizontal distance from the origin to the droplet
     vx = vx0   ! initial velocity in the x-direction
     vy = vy0   ! initial velocity in the y-direction
     vz = vz0   ! initial velocity in the z-direction
     ! open a file for outputting the droplet's trajectory
      open(unit = 1, file = "analysis_of_droplets.csv" , status = "replace")
     ! simulate the droplet's motion while it is still in the air
     do while(z >= 0)  
          t= t+dt;   ! increment the time by the time step
          ! update the velocity in the x-direction due to drag force
          vx = vx - ((6*pi*eta*r*vx)/m)*dt  
          ! update the velocity in the y-direction due to drag force
          vy = vy -((6*pi*eta*r*vy)/m)*dt  
          ! update the velocity in the z-direction due to drag force and gravity
          vz = vz - ((6*pi*eta*r*vz)/m + g)*dt;
          ! update the position of the droplet in all three directions
          x = x + vx*dt  
          y= y + vy*dt  
          z= z + vz*dt  
          ! output the velocity in the x-direction, velocity in the z-direction, 
          ! x-coordinate, z-coordinate, and time to the output file
           write(1,*)vx,',',vz,',',x,',',z,',',t  
     end do
     ! print *,'Horizontal distance covered :',x
     ! print *,'Time elapsed :',t
! end do
 end program analysis_of_droplets
 